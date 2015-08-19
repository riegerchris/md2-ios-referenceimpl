//
//  MD2WidgetStyleType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2WidgetStyleType {
    
    var color: MD2String? { get set }
    
    var fontSize: MD2Float? { get set }
    
    var textStyle: MD2WidgetTextStyle { get set }
    
}