//
//  MD2OnChangeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2OnWidgetChangeHandler: MD2WidgetEventHandlerType {
    
    typealias actionWidgetTuple = (MD2ActionType, MD2WidgetWrapper)
    
    static let instance: MD2OnWidgetChangeHandler = MD2OnWidgetChangeHandler()
    
    var actions: Dictionary<String,actionWidgetTuple> = [:]
    
    func registerAction(action: MD2ActionType, widget: MD2WidgetWrapper) {
        actions[action.actionSignature] = (action, widget)
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: MD2ActionType, widget: MD2WidgetWrapper) {
        for (key, value) in actions {
            if key == action.actionSignature {
                actions[key] = nil
                break
            }
        }
    }
    
    // Make visible to Objective-C to receive events
    @objc
    func fire(sender: MD2WidgetWrapper) {
        //println("Event fired to OnClickHandler: " + String(sender.tag) + "=" + WidgetMapping.fromRawValue(sender.tag).description)
        for (_, (action, widget)) in actions {
            if widget.widgetId == sender.widgetId {
                println("[OnWidgetChangeHandler] Execute action")
                action.execute()
            }
        }
    }
    
}