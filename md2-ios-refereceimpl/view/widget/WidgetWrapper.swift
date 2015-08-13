//
//  WidgetWrapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// Needed to implement Equatable protocol as supertype of Hashable
func ==(lhs: WidgetWrapper, rhs: WidgetWrapper) -> Bool {
    return lhs.widgetId == rhs.widgetId
}

// Make visible to Objective-C to allow as sender in event handling
@objc
// Implement Hashable interface to use as dictionary key in Data Mapper
class WidgetWrapper: Hashable {
    
    var widget: SingleWidgetType?
    
    var widgetId: WidgetMapping
    
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
                println("WidgetWrapper: Fire OnWrongValidationEvent")
                OnWrongValidationHandler.instance.fire(self)
                self.value = oldValue
            } else if self.value.equals(oldValue) == false { // Important to avoid infinite loops of WidgetUpdate -> ContentProviderUpdate -> ...
                
                // Ensure synchronized behavior with widget
                widget?.value = value
                println("WidgetWrapper: Value for \(widgetId.description) changed from '\(oldValue.toString())' to '\(self.value.toString())' -> fire OnWidgetChangeEvent")
                // Fire change event to inform about change
                OnWidgetChangeHandler.instance.fire(self)
            }
        }
    }
    
    var validators: Array<ValidatorType> = []
    
    // Required by hashable interface
    var hashValue: Int {
        get {
            return widgetId.rawValue
        }
    }
    
    init(widget: SingleWidgetType){
        self.widget = widget
        self.widgetId = widget.widgetId
        self.value = widget.value
        self.isElementDisabled = false
    }
    
    func setWidget(widget: SingleWidgetType){
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
    
    func addValidator(validator: ValidatorType) {
        validators.append(validator)
    }
    
    func removeValidator(validator: ValidatorType){
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