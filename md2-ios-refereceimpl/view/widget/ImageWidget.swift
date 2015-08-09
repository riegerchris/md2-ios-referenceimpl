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
    
    var value: MD2Type? = MD2String() // path relative to /resources/images
    
    var dimensions: Dimension?
    
    var imageElement: UIImageView?
    
    var action: MD2String
    
    var height: Float?
    
    var width: Float?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type, action: MD2String) {
        self.widgetId = widgetId
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Create and set value
        let imageElement = UIImageView()
        imageElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        let image = UIImage(named: value!.toString())
        imageElement.image = image
        
        // Add to surrounding view
        view.addSubview(imageElement)
        self.imageElement = imageElement
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
    
}