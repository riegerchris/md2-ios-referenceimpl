//
//  ActionType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol ActionType {
    
    var actionSignature: MD2String { get }
    
    var widgetRegistry: WidgetRegistry { get }
    
    var contentProviderRegistry: ContentProviderRegistry  { get }
    
    var viewManager: ViewManager  { get }
    
    var dataMapper: DataMapper  { get }
    
    func execute()
    
    func equals(anotherAction: ActionType) -> Bool
    
}