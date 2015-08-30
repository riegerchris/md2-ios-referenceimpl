//
//  MD2WidgetEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2WidgetEventHandlerType: MD2EventHandlerType {
    
    func registerAction(action: MD2ActionType, widget: MD2WidgetWrapper)
    
    func unregisterAction(action: MD2ActionType, widget: MD2WidgetWrapper)
    
}
