//
//  MD2OnRightSwipeHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

/// Event handler for right swipe events.
class MD2OnRightSwipeHandler: MD2WidgetEventHandler {
    
    /// Convenience typealias for the tuple of action and widget
    typealias actionWidgetTuple = (MD2Action, MD2WidgetWrapper)
    
    /// The singleton instance.
    static let instance: MD2OnRightSwipeHandler = MD2OnRightSwipeHandler()
    
    /// The list of registered action-widget tuples.
    var actions: Dictionary<String,actionWidgetTuple> = [:]
    
    /// Singleton initializer.
    private init() {
        // Nothing to initialize
    }
    
    /**
        Register an action.
    
        - parameter action: The action to execute in case of an event.
        - parameter widget: The widget that the action should be bound to.
    */
    func registerAction(action: MD2Action, widget: MD2WidgetWrapper) {
        actions[action.actionSignature] = (action, widget)
    }
    
    /**
        Unregister an action.
    
        - parameter action: The action to remove.
        - parameter widget: The widget the action was registered to.
    */
    func unregisterAction(action: MD2Action, widget: MD2WidgetWrapper) {
        for (key, value) in actions {
            if key == action.actionSignature {
                actions[key] = nil
                break
            }
        }
    }
    
    /**
        Method that is called to fire an event.
    
        *Notice* Visible to Objective-C runtime to receive events from UI elements.
    
        - parameter sender: The widget sending the event.
    */
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