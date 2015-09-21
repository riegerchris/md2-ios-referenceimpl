//
//  MD2WidgetWrapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// Needed to implement Equatable protocol as supertype of Hashable
func ==(lhs: MD2WidgetWrapper, rhs: MD2WidgetWrapper) -> Bool {
    return lhs.widgetId == rhs.widgetId
}

// Make visible to Objective-C to allow as sender in event handling
@objc
// Implement Hashable interface to use as dictionary key in Data Mapper
class MD2WidgetWrapper: Hashable {
    
    var widget: MD2SingleWidget?
    
    var widgetId: MD2WidgetMapping
    
    var isElementDisabled: Bool {
        // Ensure synchronized behavior with widget
        didSet {
            isElementDisabled ? widget?.disable() : widget?.enable()
        }
    }
    
    var value: MD2Type {
        didSet (oldValue) {
            // Check that data is valid and reset value to old state if not
            if !validate(value) {
                println("[WidgetWrapper] Fire OnWrongValidationEvent")
                MD2OnWrongValidationHandler.instance.fire(self)
                self.value = oldValue
            } else if self.value.equals(oldValue) == false {
                // Check is important to reduce unnecessary updates and especially to avoid infinite loops of WidgetUpdate -> ContentProviderUpdate -> WidgetUpdate -> ...
                
                // Ensure synchronized behavior with widget
                widget?.value = value
                println("[WidgetWrapper] Value for \(widgetId.description) changed from '\(oldValue.toString())' to '\(self.value.toString())' -> fire OnWidgetChangeEvent")
                // Fire change event to inform about change
                MD2OnWidgetChangeHandler.instance.fire(self)
            }
        }
    }
    
    var validators: Array<MD2Validator> = []
    
    // Required by hashable interface
    var hashValue: Int {
        get {
            return widgetId.rawValue
        }
    }
    
    init(widget: MD2SingleWidget){
        self.widget = widget
        self.widgetId = widget.widgetId
        self.value = widget.value
        self.isElementDisabled = false
    }
    
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
    
    func unsetWidget() {
        widget = nil
    }
    
    func setDisabled(isDisabled: Bool) {
        isElementDisabled = isDisabled // property observer will care about the rest
    }
    
    func isDisabled() -> Bool {
        return isElementDisabled
    }
    
    func getValue() -> MD2Type? {
        return widget?.value
    }
    
    func setValue(value: MD2Type) {
        self.value = value  // property observer will care about the rest
    }
    
    func addValidator(validator: MD2Validator) {
        validators.append(validator)
    }
    
    func removeValidator(validator: MD2Validator){
        if validators.isEmpty { return }
        
        for i in 0..<count(validators) {
            if validators[i].identifier.equals(validator.identifier) {
                validators.removeAtIndex(i)
                break
            }
        }
    }
    
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