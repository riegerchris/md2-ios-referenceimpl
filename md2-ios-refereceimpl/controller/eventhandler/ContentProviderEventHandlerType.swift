//
//  ContentProviderEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol ContentProviderEventHandlerType: EventHandlerType {
    
    func registerAction(action: ActionType, contentProvider: ContentProviderType, attribute: MD2String)
    
    func unregisterAction(action: ActionType, contentProvider: ContentProviderType, attribute: MD2String)
    
}