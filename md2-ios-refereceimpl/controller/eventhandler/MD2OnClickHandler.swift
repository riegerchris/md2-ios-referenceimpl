//
//  MD2OnClickHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 30.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2OnClickHandler: MD2WidgetEventHandler {
    
    typealias actionWidgetTuple = (MD2Action, MD2WidgetWrapper)
    
    static let instance: MD2OnClickHandler = MD2OnClickHandler()
    
    var actions: Dictionary<String, actionWidgetTuple> = [:]
    
    func registerAction(action: MD2Action, widget: MD2WidgetWrapper) {
        actions[action.actionSignature] = (action, widget)
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: MD2Action, widget: MD2WidgetWrapper) {
        for (key, value) in actions {
            if key == action.actionSignature {
                actions[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire(sender: UIControl) {
        //println("Event fired to OnClickHandler: " + String(sender.tag) + "=" + WidgetMapping.fromRawValue(sender.tag).description)
        
        for (_, (action, widget)) in actions {
            if widget.widgetId == MD2WidgetMapping.fromRawValue(sender.tag) {
                action.execute()
            }
        }
    }

}