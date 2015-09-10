//
//  MD2SwitchWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2SwitchWidget: MD2SingleWidgetType, MD2WidgetAssistedType {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type {
        didSet (oldValue) {
            // Check for type
            if !(value is MD2Boolean) {
                self.value = oldValue
            }
            
            updateElement()
        }
    }

    var dimensions: MD2Dimension?
    
    var widgetElement: UISwitch
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2Boolean(false)
        self.widgetElement = UISwitch()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Set value
        updateElement()
        
        // TODO Label for caption
        if (value is MD2Boolean) && (value as! MD2Boolean).isSet() {
            widgetElement.setOn((value as! MD2Boolean).platformValue!, animated: false)
        } else {
            widgetElement.setOn(false, animated: false)
        }
        
        widgetElement.tag = widgetId.rawValue
        widgetElement.addTarget(self, action: "onUpdate", forControlEvents: UIControlEvents.ValueChanged)
        
        // Add to surrounding view
        view.addSubview(widgetElement)
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        let outerDimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_SWITCH_HEIGHT)
        
        // Add gutter
        self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
        widgetElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        
        return outerDimensions
    }
    
    func enable() {
        self.widgetElement.enabled = true
    }
    
    func disable() {
        self.widgetElement.enabled = false
    }
    
    // Event from itself
    func onUpdate() {
        self.value = MD2Boolean(self.widgetElement.on)
        MD2WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
    }
    
    func updateElement() {
        // Update element
        if (self.value as! MD2Boolean).isSet() {
            self.widgetElement.on = ((self.value as! MD2Boolean).platformValue! as Bool)
        }
    }
    
}