//
//  ImageWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ImageWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    // path relative to /resources/images
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: Dimension?
    
    var widgetElement: UIImageView
    
    var height: Float?
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UIImageView()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Set value
        updateElement()
        
        // Add to surrounding view
        view.addSubview(widgetElement)
    }
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        let outerDimensions = Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: min(bounds.height, ViewConfig.DIMENSION_IMAGE_HEIGHT))
        
        // Add gutter
        self.dimensions = UIUtil.innerDimensionsWithGutter(outerDimensions)
        
        return outerDimensions
    }
    
    func enable() {
        // Nothing to do on a read-only element
    }
    
    func disable() {
        // Nothing to do on a read-only element
    }
    
    func updateElement() {
        widgetElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        let image = UIImage(named: value.toString())
        widgetElement.image = image
    }
}