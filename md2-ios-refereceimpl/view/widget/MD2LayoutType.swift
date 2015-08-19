//
//  MD2LayoutType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2LayoutType: MD2WidgetType {
    
    var widgets: Array<MD2WidgetType> { get set }
    
    func addWidget(widget: MD2WidgetType)
    
}