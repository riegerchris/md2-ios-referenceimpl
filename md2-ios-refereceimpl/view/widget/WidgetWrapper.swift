//
//  WidgetWrapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WidgetWrapper {
    
    var widget: WidgetType?
    
    var widgetId: MD2String?
    
    var disabled: MD2Boolean?
    
    var validators: Array<ValidatorType> = [] // TODO
    
    func setWidget(widget: WidgetType){
        self.widget = widget
    }
    
    func unsetWidget() {
        widget = nil
    }
    
    func setDisabled(isDisabled: MD2Boolean) {
        disabled = isDisabled
    }
    
    func isDisabled() -> MD2Boolean {
        if let _ = disabled {
            return disabled!
        } else {
            return MD2Boolean(false)
        }
    }
    
    func getValue() -> MD2Type {
        // TODO
        return MD2Integer(42)
    }
    
    func setValue(value: MD2Type) {
        
    }
    
    func addValidator(validator: ValidatorType) {
        validators.append(validator)
    }
    
    func removeValidator(validator: ValidatorType){
        if validators.isEmpty { return }
        
        for i in 0..<count(validators) {
            if validators[i].defaultMessage.equals(validator.defaultMessage) { // TODO how to identify validator?
                validators.removeAtIndex(i)
                break
            }
        }
    }
    
}