//
//  GridLayoutPane.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class GridLayoutPane: LayoutType {
    
    let widgetId: WidgetMapping
    
    var widgets: Array<WidgetType> = []
    
    var columns: MD2Integer?
    
    var rows: MD2Integer?
    
    var tabTitle: MD2String?
    
    var tabIcon: MD2String?
    
    var dimensions: Dimension?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
    }
    
    func render(view: UIView, controller: UIViewController) {
        // Render sub-elements
        for widget in widgets {
            widget.render(view, controller: controller)
        }
    }
    
    func addWidget(widget: WidgetType) {
        widgets.append(widget)
    }
    
    func calculateDimensions(bounds: Dimension) {
        // Set own dimensions
        dimensions = bounds
        
        let numUiElements = widgets.count
        
        if columns?.isSet() == true && rows?.isSet() == true {
            // All specified, nothing to do
            
        } else if columns?.isSet() == true {
            rows = MD2Integer(numUiElements / columns!.platformValue!)
            
        } else if rows?.isSet() == true {
            columns = MD2Integer(numUiElements / rows!.platformValue!)
            
        } else { // Nothing set, specify both
            columns = MD2Integer(1)
            rows = MD2Integer(1)
            
        }
        
        let rowHeight = bounds.height / Float(rows!.platformValue!)
        let columnWidth = bounds.width / Float(columns!.platformValue!)
        
        // TODO colspan/rowspan
        for var currentRow = 0; currentRow < rows!.platformValue!; currentRow++ {
            for var currentColumn = 0; currentColumn < columns!.platformValue!; currentColumn++ {
                
                let subDimensions = Dimension(
                    x: bounds.x + Float(currentColumn) * columnWidth,
                    y: bounds.y + Float(currentRow) * rowHeight,
                    width: columnWidth,
                    height: rowHeight)
                
                println(widgets[(currentRow * columns!.platformValue!) + currentColumn].widgetId.description + ": " + subDimensions.toString())
                widgets[(currentRow * columns!.platformValue!) + currentColumn].calculateDimensions(subDimensions)
            }
        }
    }
    
    func enable() {
        // Pass order to sub-elements
        for widget in widgets {
            widget.enable()
        }
    }
    
    func disable() {
        // Pass order to sub-elements
        for widget in widgets {
            widget.disable()
        }
    }
    
}