//
//  MD2ContentProviderEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2ContentProviderEventHandler: MD2EventHandler {
    
    func registerAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String)
    
    func unregisterAction(action: MD2Action, contentProvider: MD2ContentProvider, attribute: String)
    
}