//
//  SpacerWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class SpacerWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: Dimension?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
    }
    
    func render(view: UIView, controller: UIViewController) {
        // Nothing to render
    }
    
    func calculateDimensions(bounds: Dimension) {
        self.dimensions = bounds
    }
    
    func enable() {
        // Nothing to do
    }
    
    func disable() {
        // Nothing to do
    }
    
}