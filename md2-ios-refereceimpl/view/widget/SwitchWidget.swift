//
//  SwitchWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class SwitchWidget: SingleWidgetType, WidgetAssistedType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2Boolean(false)
    
    var dimensions: Dimension?
    
    var switchElement: UISwitch?
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var width: Float?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type) {
        self.widgetId = widgetId
        self.value = initialValue
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Create and set value
        let switchElement = UISwitch()
        switchElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        // TODO Label for caption
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
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        let outerDimensions = Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: min(bounds.height, ViewConfig.DIMENSION_SWITCH_HEIGHT))
        
        // Add gutter
        self.dimensions = UIUtil.innerDimensionsWithGutter(outerDimensions)
        
        return outerDimensions
    }
    
    func enable() {
        self.switchElement?.enabled = true
    }
    
    func disable() {
        self.switchElement?.enabled = false
    }
    
}