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
    
    var dimensions: Dimension?
    
    init(widgetId: WidgetMapping) {
        self.orientation = Orientation.Horizontal
        self.widgetId = widgetId
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Calculate dimensions
        // TODO
        
        // Render sub-elements
        for widget in widgets {
            widget.render(view, controller: controller) // TODO create view itself
        }
    }
    
    func addWidget(widget: WidgetType) {
        widgets.append(widget)
    }
    
    enum Orientation {
        case Vertical, Horizontal
    }
    
    func calculateDimensions(bounds: Dimension) {
        // Set own dimensions
        dimensions = bounds
        
        let numUiElements = widgets.count
        
        // TODO Gutter
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
    }
    
}