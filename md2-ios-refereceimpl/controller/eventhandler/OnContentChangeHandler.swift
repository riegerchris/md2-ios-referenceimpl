//
//  OnContentChangeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class OnContentChangeHandler: ContentProviderEventHandlerType {
    
    static let instance:OnContentChangeHandler = OnContentChangeHandler()
    
    var actions: Dictionary<ContentProviderAttributeIdentity,ActionType> = [:]
    
    func registerAction(action: ActionType, contentProvider: ContentProviderType, attribute: String) {
        actions[ContentProviderAttributeIdentity(contentProvider, attribute)] = action
    }
    
    func unregisterAction(action: ActionType, contentProvider: ContentProviderType, attribute: String) {
        for (cpaIdentity, value) in actions {
            if cpaIdentity == ContentProviderAttributeIdentity(contentProvider, attribute) {
                actions[cpaIdentity] = nil
                break
            }
        }
    }
    
    func fire(contentProvider: ContentProviderType, attribute: String) {
        for (cpaIdentity, action) in actions {
            if cpaIdentity == ContentProviderAttributeIdentity(contentProvider, attribute) {
                println("[OnContentChangeHandler] Execute action")
                action.execute()
            }
        }
    }
    
}