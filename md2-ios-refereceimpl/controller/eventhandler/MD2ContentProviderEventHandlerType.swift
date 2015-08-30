//
//  MD2ContentProviderEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2ContentProviderEventHandlerType: MD2EventHandlerType {
    
    func registerAction(action: MD2ActionType, contentProvider: MD2ContentProviderType, attribute: String)
    
    func unregisterAction(action: MD2ActionType, contentProvider: MD2ContentProviderType, attribute: String)
    
}