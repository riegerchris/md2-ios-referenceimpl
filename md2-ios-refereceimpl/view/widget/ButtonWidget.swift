//
//  ButtonWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ButtonWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: Dimension?
    
    var action: MD2String
    
    var buttonElement: UIButton?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type, action: MD2String) {
        self.widgetId = widgetId
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let button = UIButton()
        button.frame = UIUtil.dimensionToCGRect(dimensions!) //CGRectMake(120, 80, 150, 100) // TODO dimensions
        button.setTitle(value?.toString().platformValue, forState: .Normal)
        button.tag = widgetId.rawValue
        button.addTarget(OnClickHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Set styling
        button.backgroundColor = UIColor.blueColor() // TODO styling
        button.alpha = 0.6
        button.layer.borderWidth = 0.3
        button.layer.cornerRadius = 2
        button.titleLabel!.textAlignment=NSTextAlignment.Center
        
        // Add to surrounding view
        view.addSubview(button)
        self.buttonElement = button
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
