//
//  MD2OnWrongValidationHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2OnWrongValidationHandler: MD2WidgetEventHandlerType {
    
    typealias actionWidgetTuple = (MD2ActionType, MD2WidgetWrapper)
    
    static let instance: MD2OnWrongValidationHandler = MD2OnWrongValidationHandler()
    
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
    
    @objc
    func fire(sender: MD2WidgetWrapper) {
        //println("Event fired to OnWrongValidationHandler: " + sender.widgetId.description)
        
        for (_, (action, widget)) in actions {
            if widget.widgetId == sender.widgetId {
                action.execute()
            }
        }
    }
    
}