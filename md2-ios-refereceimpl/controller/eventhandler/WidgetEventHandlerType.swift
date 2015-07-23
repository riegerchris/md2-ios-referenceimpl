//
//  WidgetEventHandlerType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol WidgetEventHandlerType: EventHandlerType {
    
    func registerAction(action: ActionType, widget: WidgetWrapper)
    
    func unregisterAction(action: ActionType, widget: WidgetWrapper)
    
}
