//
//  MD2GridLayoutPane.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2GridLayoutPane: MD2LayoutType {
    
    let widgetId: MD2WidgetMapping
    
    var widgets: Array<MD2WidgetType> = []
    
    var columns: MD2Integer?
    
    var rows: MD2Integer?
    
    var tabTitle: MD2String?
    
    var tabIcon: MD2String?
    
    var dimensions: MD2Dimension?
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
    }
    
    func render(view: UIView, controller: UIViewController) {
        // Render sub-elements
        for widget in widgets {
            widget.render(view, controller: controller)
        }
    }
    
    func addWidget(widget: MD2WidgetType) {
        widgets.append(widget)
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        // Set own dimensions
        dimensions = bounds
        
        let numUiElements = widgets.count
        
        if columns?.isSet() == true && rows?.isSet() == true {
            // All specified, nothing to do
            
        } else if columns?.isSet() == true {
            rows = MD2Integer(numUiElements / columns!.platformValue!)
            
        } else if rows?.isSet() == true {
            columns = MD2Integer(numUiElements / rows!.platformValue!)
            
        } else { // Nothing set, set both to 1
            columns = MD2Integer(1)
            rows = MD2Integer(1)
            
        }
        
        var currentY = bounds.y
        let columnWidth = bounds.width / Float(columns!.platformValue!)
        
        for var currentRow = 0; currentRow < rows!.platformValue!; currentRow++ {
            var maxHeight: Float = 0.0
            
            // Strict calculation of cell maximum sizes
            // let rowHeight = bounds.height / Float(rows!.platformValue!)
            // Allow different row height
            let rowHeight = bounds.y + bounds.height - currentY
            
            for var currentColumn = 0; currentColumn < columns!.platformValue!; currentColumn++ {
                let subDimensions = MD2Dimension(
                    x: bounds.x + Float(currentColumn) * columnWidth,
                    y: currentY,
                    width: columnWidth,
                    height: rowHeight)
                
                // Avoid problems when rows/columns are not completely filled
                if (currentRow * columns!.platformValue!) + currentColumn < widgets.count {
                    let acceptedDimension = widgets[(currentRow * columns!.platformValue!) + currentColumn].calculateDimensions(subDimensions)
                
                    if acceptedDimension.height > maxHeight {
                        maxHeight = acceptedDimension.height
                    }
                }
            }
            
            // Prepare next row
            currentY += maxHeight
        }
        
        return MD2Dimension(
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