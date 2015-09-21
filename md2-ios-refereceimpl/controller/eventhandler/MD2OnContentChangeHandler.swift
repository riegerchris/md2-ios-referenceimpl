//
//  MD2OnContentChangeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2OnContentChangeHandler: MD2ContentProviderEventHandler {
    
    static let instance: MD2OnContentChangeHandler = MD2OnContentChangeHandler()
    
    var actions: Dictionary<MD2ContentProviderAttributeIdentity, MD2Action> = [:]
    
    func registerAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String) {
        actions[MD2ContentProviderAttributeIdentity(contentProvider, attribute)] = action
    }
    
    func unregisterAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String) {
        for (cpaIdentity, value) in actions {
            if cpaIdentity == MD2ContentProviderAttributeIdentity(contentProvider, attribute) {
                actions[cpaIdentity] = nil
                break
            }
        }
    }
    
    func fire(contentProvider: MD2ContentProvider, attribute: String) {
        for (cpaIdentity, action) in actions {
            if cpaIdentity == MD2ContentProviderAttributeIdentity(contentProvider, attribute) {
                println("[OnContentChangeHandler] Execute action")
                action.execute()
            }
        }
    }
    
}