//
//  MD2ImageWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2ImageWidget: MD2SingleWidget {
    
    let widgetId: MD2WidgetMapping
    
    // path relative to /resources/images
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: MD2Dimension?
    
    var widgetElement: UIImageView
    
    var height: Float?
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UIImageView()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Default parameters
        widgetElement.contentMode = UIViewContentMode.ScaleAspectFit
        
        // Set value
        updateElement()
        
        // Add to surrounding view
        view.addSubview(widgetElement)
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        let outerDimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_IMAGE_HEIGHT)
        
        // Add gutter
        self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
        widgetElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        
        return outerDimensions
    }
    
    func enable() {
        // Nothing to do on a read-only element
    }
    
    func disable() {
        // Nothing to do on a read-only element
    }
    
    func updateElement() {
        // Image from URL (synchronous call)
        if let url = NSURL(string: value.toString()) {
            if let data = NSData(contentsOfURL: url) {
                widgetElement.image = UIImage(data: data)
            }
        }
    }
}