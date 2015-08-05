//
//  OnConnectionRegainedHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class OnConnectionRegainedHandler: GlobalEventHandlerType {
    
    static let instance:OnConnectionRegainedHandler = OnConnectionRegainedHandler()
    
    var actions: Dictionary<String,ActionType> = [:]
    
    func registerAction(action: ActionType) {
        actions[action.actionSignature.platformValue!] = action
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: ActionType) {
        for (key, value) in actions {
            if MD2String(key).equals(action.actionSignature) {
                actions[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire() {
        //println("Event fired to OnClickHandler: " + String(sender.tag) + "=" + WidgetMapping.fromRawValue(sender.tag).description)
        
        for (_, action) in actions {
            action.execute()
        }
    }
    
}