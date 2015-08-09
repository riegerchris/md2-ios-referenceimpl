//
//  FlowLayoutPane.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class FlowLayoutPane: LayoutType {
    
    let widgetId: WidgetMapping

    var widgets: Array<WidgetType> = []
    
    var orientation: Orientation
    
    var tabTitle: MD2String?
    
    var tabIcon: MD2String?
    
    var dimensions: Dimension?
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
        
        // Default
        self.orientation = Orientation.Horizontal
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
    
    enum Orientation {
        case Vertical, Horizontal
    }
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        let numUiElements = widgets.count
        
        if orientation == Orientation.Horizontal {
            // Check that all specified widths do not surpass 100%
            var sum: Float = 0.0
            var numNonSpecifiedWidths = 0
            for widget in widgets {
                if let _ = widget.width {
                    sum += widget.width!
                } else {
                    sum += 0.1 // Minimum 10% for an element if not explicitly specified
                    numNonSpecifiedWidths++
                }
            }
            
            // Capture information on the actual dimensions
            var maxHeight: Float = 0.0
            var currentX = bounds.x
            
            for var currentElem = 0; currentElem < numUiElements; currentElem++ {
                var subDimensions: Dimension
                
                if sum > 1.0 {
                    // Reduce overall sizes if widths are too large
                    let multiplier: Float = 1.0 / sum
                    
                    subDimensions = Dimension(
                        x: currentX,
                        y: bounds.y,
                        // Available width * (specified width OR min percentage) * multiplier 
                        width: (widgets[currentElem].width != nil) ? bounds.width * widgets[currentElem].width! * multiplier : bounds.width * 0.1 * multiplier,
                        height: bounds.height)
                } else {
                    subDimensions = Dimension(
                        x: currentX,
                        y: bounds.y,
                        // Available width * (specified width OR equal proportion of remaining space)
                        width: (widgets[currentElem].width != nil) ? bounds.width * widgets[currentElem].width! : (bounds.width - (currentX - bounds.x)) / Float(numNonSpecifiedWidths),
                        height: bounds.height)
                    
                    numNonSpecifiedWidths--
                }
                
                let acceptedDimensions = widgets[currentElem].calculateDimensions(subDimensions)
                    
                if maxHeight < acceptedDimensions.height {
                    maxHeight = acceptedDimensions.height
                }
                    
                if currentX < acceptedDimensions.x + acceptedDimensions.width {
                    currentX = acceptedDimensions.x + acceptedDimensions.width
                }
                
            }
            
            return Dimension(
                x: bounds.x,
                y: bounds.y,
                width: currentX - bounds.x,
                height: maxHeight)
            
        } else if orientation == Orientation.Vertical {
            // Capture information on the actual dimensions
            var maxWidth: Float = 0.0
            var currentY = bounds.y
            
            for var currentElem = 0; currentElem < numUiElements; currentElem++ {
                let subDimensions = Dimension(
                    x: bounds.x,
                    y: currentY,
                    width: bounds.width,
                    // Equal proportion of remaining height
                    height: (bounds.height - (currentY - bounds.y)) / Float(numUiElements - currentElem))
                
                let acceptedDimensions = widgets[currentElem].calculateDimensions(subDimensions)
                
                if maxWidth < acceptedDimensions.width {
                    maxWidth = acceptedDimensions.width
                }
                
                if currentY < acceptedDimensions.y + acceptedDimensions.height {
                    currentY = acceptedDimensions.y + acceptedDimensions.height
                }
                
                println(widgets[currentElem].widgetId.description + ": " + subDimensions.toString())
            }
            
            return Dimension(
                x: bounds.x,
                y: bounds.y,
                width: maxWidth,
                height: currentY - bounds.y)
        }
        
        return Dimension()
        
/* Naive equi-sized calculation
        // Set own dimensions
        dimensions = bounds
        
        let numUiElements = widgets.count
        
        // Calculate individual positions
        for var currentElem = 0; currentElem < numUiElements; currentElem++ {
            var subDimensions = Dimension()
            
            if orientation == Orientation.Horizontal {
                subDimensions = Dimension(
                    x: bounds.x + Float(currentElem) * (bounds.width / Float(numUiElements)),
                    y: bounds.y,
                    width: bounds.width / Float(numUiElements),
                    height: bounds.height)
            } else {
                subDimensions = Dimension(
                    x: bounds.x,
                    y: bounds.y + Float(currentElem) * (bounds.height / Float(numUiElements)),
                    width: bounds.width,
                    height: bounds.height / Float(numUiElements))
            }
            
            println(widgets[currentElem].widgetId.description + ": " + subDimensions.toString())
            widgets[currentElem].calculateDimensions(subDimensions)
        }
        
        return dimensions!
*/
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