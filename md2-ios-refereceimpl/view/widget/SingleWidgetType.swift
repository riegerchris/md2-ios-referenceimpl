//
//  SingleWidgetType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol SingleWidgetType: WidgetType {
    
    var value: MD2Type { get set }

    var dimensions: (MD2Integer, MD2Integer, MD2Integer, MD2Integer) { get set }
    
}