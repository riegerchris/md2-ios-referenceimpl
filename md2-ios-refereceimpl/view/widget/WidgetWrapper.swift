//
//  WidgetWrapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WidgetWrapper {
    
    var widget: SingleWidgetType?
    
    var widgetId: WidgetMapping?
    
    var disabled: MD2Boolean
    
    var value: MD2Type
    
    var validators: Array<ValidatorType> = []
    
    init(widget: SingleWidgetType, value: MD2Type, disabled: MD2Boolean){
        self.value = value
        self.disabled = disabled
        
        setWidget(widget)
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
    
    func setDisabled(isDisabled: MD2Boolean) {
        disabled = isDisabled
        widget?.disable()
    }
    
    func isDisabled() -> Bool {
        return disabled.isSet() == true && disabled.equals(MD2Boolean(false))
    }
    
    func getValue() -> MD2Type? {
        return widget?.value
    }
    
    func setValue(value: MD2Type) {
        widget?.value = value
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
    
}