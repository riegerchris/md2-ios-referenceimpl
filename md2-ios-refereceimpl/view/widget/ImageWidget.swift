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
    
    var height: MD2Integer?
    
    var width: MD2Integer?
    
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
        
        // Set styling
        // TODO styling
        
        // Add to surrounding view
        view.addSubview(imageElement)
        self.imageElement = imageElement
    }
    
    func calculateDimensions(bounds: Dimension) {
        // Add gutter
        self.dimensions = Dimension(
            x: bounds.x + ViewConfig.GUTTER,
            y: bounds.y + ViewConfig.GUTTER,
            width: bounds.width - 2 * ViewConfig.GUTTER,
            height: bounds.height - 2 * ViewConfig.GUTTER)
    }
    
    func enable() {
        // Nothing to do on a read-only element
    }
    
    func disable() {
        // Nothing to do on a read-only element
    }
    
}