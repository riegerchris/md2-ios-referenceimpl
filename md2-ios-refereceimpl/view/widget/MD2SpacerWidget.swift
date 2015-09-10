//
//  MD2SpacerWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2SpacerWidget: MD2SingleWidgetType {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type = MD2String("")
    
    var dimensions: MD2Dimension?
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
    }
    
    func render(view: UIView, controller: UIViewController) {
        // Nothing to render
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        self.dimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_SPACER_HEIGHT)
        
        return self.dimensions!
    }
    
    func enable() {
        // Nothing to do
    }
    
    func disable() {
        // Nothing to do
    }
    
}