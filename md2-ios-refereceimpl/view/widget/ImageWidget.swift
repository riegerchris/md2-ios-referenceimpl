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
    
    var value: MD2Type? = MD2Boolean(false)
    
    var dimensions: Dimension?
    
    var imageElement: UIImageView?
    
    var action: MD2String
    
    init(widgetId: WidgetMapping, initialValue: MD2Type, action: MD2String) {
        self.widgetId = widgetId
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let imageElement = UIImageView()
        imageElement.frame = UIUtil.dimensionToCGRect(dimensions!) //CGRectMake(120, 300, 150, 100) // TODO dimensions
        let image = UIImage(named: value!.toString().platformValue!)
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
    
}