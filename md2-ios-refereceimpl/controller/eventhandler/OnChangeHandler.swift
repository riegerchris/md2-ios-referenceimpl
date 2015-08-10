//
//  OnChangeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class OnWidgetChangeHandler: WidgetEventHandlerType {
    
    typealias actionWidgetTuple = (ActionType,WidgetWrapper)
    
    static let instance:OnWidgetChangeHandler = OnWidgetChangeHandler()
    
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
    
    // Make visible to Objective-C to receive events
    @objc
    func fire(sender: WidgetWrapper) {
        //println("Event fired to OnClickHandler: " + String(sender.tag) + "=" + WidgetMapping.fromRawValue(sender.tag).description)
        
        for (_, (action, widget)) in actions {
            if widget.widgetId == sender.widgetId {
                action.execute()
            }
        }
    }
    
}