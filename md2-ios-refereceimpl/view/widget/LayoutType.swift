//
//  LayoutType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol LayoutType: WidgetType {
    
    var widgets: Array<WidgetType> { get set }
    
    func addWidget(widget: WidgetType)
    
}