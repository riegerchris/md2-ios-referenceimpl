//
//  MD2ContentProviderEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

/// Interface for content provider event handlers.
protocol MD2ContentProviderEventHandler: MD2EventHandler {
    
    /**
        Register an action to a content provider event handler.
    
        - parameter action: The action to execute in case of an event.
        - parameter contentProvider: The content provider that the action should be bound to.
        - parameter attribute: The content provider attribute the action should be bound to.
    */
    func registerAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String)
    
    /**
        Unregister an action from a content provider event handler.
    
        - parameter action: The action to remove.
        - parameter contentProvider: The content provider the action was registered to.
        - parameter attribute: The content provider attribute the action was registered to.
    */
    func unregisterAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String)
    
}