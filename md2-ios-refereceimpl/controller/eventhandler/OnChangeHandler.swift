//
//  OnChangeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class OnChangeHandler: WidgetEventHandlerType {
    //TODO
    
    static let instance:OnChangeHandler = OnChangeHandler()
    
    var actions: Dictionary<String,(ActionType,WidgetWrapper)> = [:]
    
    func registerAction(action: ActionType, widget: WidgetWrapper) {
        actions[action.actionSignature.platformValue!] = (action, widget)
    }
    
    func unregisterAction(action: ActionType, widget: WidgetWrapper) {
        for (key, value) in actions {
            if MD2String(key).equals(action.actionSignature) {
                actions[key] = nil
                break
            }
        }
    }
    
    func fire() { // TODO signature, execute action
        print("testevent")
    }
    
}