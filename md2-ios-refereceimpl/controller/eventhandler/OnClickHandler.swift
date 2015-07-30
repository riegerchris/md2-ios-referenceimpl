//
//  OnClickHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 30.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class OnClickHandler: WidgetEventHandlerType {
    //TODO
    
    typealias actionWidgetTuple = (ActionType,WidgetWrapper)
    
    static let instance:OnClickHandler = OnClickHandler()
    
    var actions: Dictionary<String,actionWidgetTuple> = [:]
    
    func registerAction(action: ActionType, widget: WidgetWrapper) {
        actions[action.actionSignature.platformValue!] = (action, widget)
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: ActionType, widget: WidgetWrapper) {
        for (key, value) in actions {
            if MD2String(key).equals(action.actionSignature) {
                actions[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire(sender: AnyObject) { // TODO signature, execute action
        //println("Event fired to OnClickHandler: " + String(sender.tag) + "=" + WidgetMapping.fromRawValue(sender.tag).description)
        
        var action: ActionType = actions["mainPageNextAction"]!.0
        action.execute()
        
    }

}