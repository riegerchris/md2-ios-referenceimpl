//
//  MD2Layout.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2Layout: MD2Widget {
    
    var widgets: Array<MD2Widget> { get set }
    
    func addWidget(widget: MD2Widget)
    
}