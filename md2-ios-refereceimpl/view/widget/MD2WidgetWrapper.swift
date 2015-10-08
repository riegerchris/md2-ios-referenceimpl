//
//  MD2WidgetWrapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

/**
    Helper function needed to implement Equatable protocol as supertype of Hashable.

    - parameter lhs: The first widget wrapper to compare.
    - parameter rhs: The second widget wrapper to compare.

    - returns: Whether the widget wrappers are the same.
*/
func ==(lhs: MD2WidgetWrapper, rhs: MD2WidgetWrapper) -> Bool {
    return lhs.widgetId == rhs.widgetId
}

/**
    The widget wrapper to provide a common interface for the different view elements.

    *NOTICE* Implement Hashable interface to use as dictionary key in the data mapper implementation.

    *NOTICE* Make visible to Objective-C to allow as sender in event handling.
*/

@objc
class MD2WidgetWrapper: NSObject {
    
    /// The wrapped view element.
    var widget: MD2SingleWidget?
    
    /// The widget identifier.
    var widgetId: MD2WidgetMapping
    
    /// Enabled/Disabled state of the wrapped element. Uses a property observer to synchronize with wrapped object.
    var isElementDisabled: Bool {
        // Ensure synchronized behavior with widget
        didSet {
            isElementDisabled ? widget?.disable() : widget?.enable()
        }
    }
    
    /**
        The value of the element. Uses a property observer to react to value changes:
        
        - From view element changes: The value is validated and an OnWidgetChange or OnWrongValidation event is fired.

        - From content provider updates: If the new value differs from the old value the view element is updated.
    */
    var value: MD2Type {
        didSet (oldValue) {
            // Check that data is valid and reset value to old state if not
            if !validate(value) {
                print("[WidgetWrapper] Fire OnWrongValidationEvent")
                MD2OnWrongValidationHandler.instance.fire(self)
                self.value = oldValue
            } else if self.value.equals(oldValue) == false {
                // Check is important to reduce unnecessary updates and especially to avoid infinite loops of WidgetUpdate -> ContentProviderUpdate -> WidgetUpdate -> ...
                
                // Ensure synchronized behavior with widget
                widget?.value = value
                print("[WidgetWrapper] Value for \(widgetId.description) changed from '\(oldValue.toString())' to '\(self.value.toString())' -> fire OnWidgetChangeEvent")
                // Fire change event to inform about change
                MD2OnWidgetChangeHandler.instance.fire(self)
            }
        }
    }
    
    /// List of validators that the value needs to conform to.
    var validators: Array<MD2Validator> = []
    
    /// Hash value as required by hashable interface
    override var hashValue: Int {
        get {
            return widgetId.rawValue
        }
    }
    
    /**
        Convenience initializer to create a wrapper element for a given view element.

        - parameter widget: The view element to wrap.
    */
    init(widget: MD2SingleWidget){
        self.widget = widget
        self.widgetId = widget.widgetId
        self.value = widget.value
        self.isElementDisabled = false
    }
    
    /**
        Set a widget to wrap.

        - parameter widget: The view element to wrap.
    */
    func setWidget(widget: MD2SingleWidget){
        self.widget = widget
        widgetId = widget.widgetId
        
        // Restore widget enabled/disabled state
        if isDisabled() {
            widget.disable()
        } else {
            widget.enable()
        }
        
        // Restore widget value
        widget.value = self.value
    }
    
    /**
        Remove the wrapped view element.
    */
    func unsetWidget() {
        widget = nil
    }
    
    /** 
        Enable/Disable the wrapped view element.

        - parameter isDisabled: Whether to deactivate or activate the view element.
    */
    func setDisabled(isDisabled: Bool) {
        isElementDisabled = isDisabled // property observer will care about the rest
    }
    
    /**
        Check if the view element is disabled.

        - returns: Whether the element is disabled.
    */
    func isDisabled() -> Bool {
        return isElementDisabled
    }
    
    /**
        Get the value of the view element.

        - returns: The value if set.
    */
    func getValue() -> MD2Type? {
        return widget?.value
    }
    
    /**
        Set the value of the wrapped view element.

        - parameter value: The value to set
    */
    func setValue(value: MD2Type) {
        self.value = value  // property observer will care about the rest
    }
    
    /**
        Add a validator the value has to comply to.

        - parameter validator: The validator to add.
    */
    func addValidator(validator: MD2Validator) {
        validators.append(validator)
    }
    
    /**
        Remove a validator (by reference).
    
        - parameter validator: The validator to add.
    */
    func removeValidator(validator: MD2Validator){
        if validators.isEmpty { return }
        
        for i in 0..<validators.count {
            if validators[i].identifier.equals(validator.identifier) {
                validators.removeAtIndex(i)
                break
            }
        }
    }
    
    /**
        Validate the current value.
    
        - parameter value: The value to validate.

        - returns: The validation result.
    */
    func validate(value: MD2Type) -> Bool {
        var validationResult: Bool = true
        
        for validator in validators {
            if !validator.isValid(value) {
                validationResult = false
            }
        }
            
        return validationResult
    }
}