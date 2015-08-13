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
    
    var switchElement: UISwitch?
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2Boolean(false)
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Create and set value
        let switchElement = UISwitch()
        self.switchElement = switchElement
        switchElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        updateElement()
        
        // TODO Label for caption
        if (value is MD2Boolean) && (value as! MD2Boolean).isSet() {
            switchElement.setOn((value as! MD2Boolean).platformValue!, animated: false)
        } else {
            switchElement.setOn(false, animated: false)
        }
        
        switchElement.tag = widgetId.rawValue
        switchElement.addTarget(self, action: "onUpdate", forControlEvents: UIControlEvents.ValueChanged)
        
        // Add to surrounding view
        view.addSubview(switchElement)
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
    
    // Event from itself
    func onUpdate() {
        if let _ = self.switchElement {
            self.value = MD2Boolean(self.switchElement!.on)
            WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
        }
    }
    
    func updateElement() {
        // Update element
        if (self.value as! MD2Boolean).isSet() {
            self.switchElement?.on = ((self.value as! MD2Boolean).platformValue! as Bool)
        }
    }
    
}