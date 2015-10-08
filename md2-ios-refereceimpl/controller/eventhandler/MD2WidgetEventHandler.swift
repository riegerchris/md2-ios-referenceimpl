//
//  MD2WidgetEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

/// Interface for widget event handlers.
protocol MD2WidgetEventHandler: MD2EventHandler {
    
    /**
        Register an action to a widget event handler.
    
        - parameter action: The action to execute in case of an event.
        - parameter widget: The widget that the action should be bound to.
    */
    func registerAction(action: MD2Action, widget: MD2WidgetWrapper)
    
    /**
        Unregister an action from a widget event handler.
    
        - parameter action: The action to remove.
        - parameter widget: The widget the action was registered to.
    */
    func unregisterAction(action: MD2Action, widget: MD2WidgetWrapper)
    
}
