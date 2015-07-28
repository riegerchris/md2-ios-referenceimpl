//
//  LayoutType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol LayoutType: WidgetType {
    // TODO add etc
    
    var widgets: Array<WidgetType> { get set }
    
}