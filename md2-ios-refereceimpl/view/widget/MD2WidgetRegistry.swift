//
//  MD2WidgetRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WidgetRegistry {
    
    static let instance: MD2WidgetRegistry = MD2WidgetRegistry()
    
    var widgets: Array<MD2WidgetWrapper> = []
    
    init() {
        
    }
    
    func add(widget: MD2WidgetWrapper) {
        widgets.append(widget)
    }
    
    func getWidget(id: MD2WidgetMapping) -> MD2WidgetWrapper? {
        for widget in widgets {
            if widget.widgetId == id {
                return widget
            }
        }
        return nil
    }
    
}