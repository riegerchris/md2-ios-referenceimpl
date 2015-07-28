//
//  WidgetRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WidgetRegistry {
    
    var widgets: Array<WidgetWrapper> = []
    
    init() {
        
    }
    
    func add(widget: WidgetWrapper) {
        widgets.append(widget)
    }
    
    func getWidget(id: MD2String) -> WidgetWrapper? {
        for widget in widgets {
            if widget.widgetId?.equals(id) == true {
                return widget
            }
        }
        return nil
    }
    
}