//
//  MD2OnConnectionRegainedHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2OnConnectionRegainedHandler: MD2GlobalEventHandler {
    
    static let instance: MD2OnConnectionRegainedHandler = MD2OnConnectionRegainedHandler()
    
    var actions: Dictionary<String, MD2Action> = [:]
    
    func registerAction(action: MD2Action) {
        actions[action.actionSignature] = action
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: MD2Action) {
        for (key, value) in actions {
            if key == action.actionSignature {
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