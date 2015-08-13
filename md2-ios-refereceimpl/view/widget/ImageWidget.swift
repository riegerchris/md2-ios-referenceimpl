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
    
    var imageElement: UIImageView?
    
    var height: Float?
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Create and set value
        let imageElement = UIImageView()
        self.imageElement = imageElement
        updateElement()
        
        // Add to surrounding view
        view.addSubview(imageElement)
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
        imageElement?.frame = UIUtil.dimensionToCGRect(dimensions!)
        let image = UIImage(named: value.toString())
        imageElement?.image = image
    }
}