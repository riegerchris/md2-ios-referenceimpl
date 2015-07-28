//
//  SingleWidgetType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol SingleWidgetType: WidgetType {
    // TODO
    
    func getValue() -> MD2Type
    
    func setValue(value: MD2Type)
    
}