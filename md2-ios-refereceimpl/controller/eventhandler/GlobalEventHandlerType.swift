//
//  GlobalEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol GlobalEventHandlerType: EventHandlerType {
    
    func registerAction(action: ActionType)
    
    func unregisterAction(action: ActionType)
    
}
