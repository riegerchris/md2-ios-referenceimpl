//
//  SwitchWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class SwitchWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2Boolean(false)
    
    var dimensions: Dimension?
    
    var action: MD2String
    
    var switchElement: UISwitch?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type, action: MD2String) {
        self.widgetId = widgetId
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let switchElement = UISwitch()
        switchElement.frame = UIUtil.dimensionToCGRect(dimensions!) //CGRectMake(120, 300, 150, 100) // TODO dimensions
        
        if (value is MD2Boolean) && (value as! MD2Boolean).isSet() {
            switchElement.setOn((value as! MD2Boolean).platformValue!, animated: false)
        } else {
            switchElement.setOn(false, animated: false)
        }
        
        switchElement.tag = widgetId.rawValue
        switchElement.addTarget(OnChangeHandler.instance, action: "fire:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Set styling
        // TODO styling
        
        // Add to surrounding view
        view.addSubview(switchElement)
        self.switchElement = switchElement
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