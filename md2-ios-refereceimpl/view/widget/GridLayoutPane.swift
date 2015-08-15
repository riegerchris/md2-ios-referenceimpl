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
    
    var width: Float?
    
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
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
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
        
        var currentY = bounds.y
        
        for var currentRow = 0; currentRow < rows!.platformValue!; currentRow++ {
            var maxHeight: Float = 0.0
            
            for var currentColumn = 0; currentColumn < columns!.platformValue!; currentColumn++ {
                let subDimensions = Dimension(
                    x: bounds.x + Float(currentColumn) * columnWidth,
                    y: currentY,
                    width: columnWidth,
                    height: rowHeight)
                
                // println(widgets[(currentRow * columns!.platformValue!) + currentColumn].widgetId.description + ": " + subDimensions.toString())
                let acceptedDimension = widgets[(currentRow * columns!.platformValue!) + currentColumn].calculateDimensions(subDimensions)
                
                if acceptedDimension.height > maxHeight {
                    maxHeight = acceptedDimension.height
                }
            }
            
            // Prepare next row
            currentY += maxHeight
        }
        
        return Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: currentY - bounds.y)
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