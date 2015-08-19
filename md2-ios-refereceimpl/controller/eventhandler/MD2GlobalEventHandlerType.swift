//
//  MD2GlobalEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2GlobalEventHandlerType: MD2EventHandlerType {
    
    func registerAction(action: MD2ActionType)
    
    func unregisterAction(action: MD2ActionType)
    
}
