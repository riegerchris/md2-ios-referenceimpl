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
    
    var value: MD2Type {
        didSet (oldValue) {
            // Check for type
            if !(value is MD2Boolean) {
                self.value = oldValue
            }
            
            updateElement()
        }
    }

    var dimensions: Dimension?
    
    var widgetElement: UISwitch
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
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
        widgetElement.frame = UIUtil.dimensionToCGRect(dimensions!)
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
        self.widgetElement.enabled = true
    }
    
    func disable() {
        self.widgetElement.enabled = false
    }
    
    // Event from itself
    func onUpdate() {
        self.value = MD2Boolean(self.widgetElement.on)
        WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
    }
    
    func updateElement() {
        // Update element
        if (self.value as! MD2Boolean).isSet() {
            self.widgetElement.on = ((self.value as! MD2Boolean).platformValue! as Bool)
        }
    }
    
}