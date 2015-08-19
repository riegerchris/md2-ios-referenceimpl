//
//  MD2TextFieldWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2TextFieldWidget: NSObject, MD2SingleWidgetType, MD2WidgetAssistedType, UITextFieldDelegate {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: MD2Dimension?
    
    var placeholder: MD2String?
    
    var widgetElement: UITextField
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var tooltipDimensions: MD2Dimension?
    
    var type: TextFieldType = TextFieldType.Standard
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UITextField()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Set value
        widgetElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        widgetElement.placeholder = placeholder?.platformValue
        updateElement()
        
        widgetElement.tag = widgetId.rawValue
        widgetElement.addTarget(self, action: "onUpdate", forControlEvents: (UIControlEvents.EditingDidEnd | UIControlEvents.EditingDidEndOnExit))
        
        // Set styling
        widgetElement.backgroundColor = UIColor.whiteColor()
        widgetElement.borderStyle = UITextBorderStyle.RoundedRect
        widgetElement.font = UIFont(name: MD2ViewConfig.FONT_NAME.rawValue, size: CGFloat(MD2ViewConfig.FONT_SIZE))
        
        // Add to surrounding view
        widgetElement.delegate = self
        view.addSubview(widgetElement)
        
        // If tooltip info is available show info button
        if self.tooltip != nil && self.tooltip!.isSet() {
            let infoButton = MD2ButtonWidget(widgetId: self.widgetId)
            infoButton.buttonType = UIButtonType.InfoLight
            infoButton.dimensions = self.tooltipDimensions
            infoButton.render(view, controller: controller)
        }
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        var outerDimensions: MD2Dimension = bounds
        
        // If tooltip info is available show info button
        if self.tooltip != nil && self.tooltip!.isSet() {
            outerDimensions = MD2Dimension(
                x: bounds.x,
                y: bounds.y,
                width: bounds.width,
                height: min(bounds.height, MD2ViewConfig.DIMENSION_TEXTFIELD_HEIGHT))
            
            var textFieldDimensions = outerDimensions - MD2Dimension(
                x: Float(0.0),
                y: Float(0.0),
                width: Float(MD2ViewConfig.TOOLTIP_WIDTH),
                height: Float(0.0))
            
            // Add gutter
            self.dimensions = MD2UIUtil.innerDimensionsWithGutter(textFieldDimensions)
            
            self.tooltipDimensions = MD2Dimension(
                x: (outerDimensions.x + outerDimensions.width) - Float(MD2ViewConfig.TOOLTIP_WIDTH) - MD2ViewConfig.GUTTER / 2,
                // center vertically
                y: textFieldDimensions.y + (textFieldDimensions.height - MD2ViewConfig.TOOLTIP_WIDTH) / 2,
                width: MD2ViewConfig.TOOLTIP_WIDTH,
                height: MD2ViewConfig.TOOLTIP_WIDTH)
            
            return outerDimensions
            
        } else {
            // Normal full-width field
            outerDimensions = MD2Dimension(
                x: bounds.x,
                y: bounds.y,
                width: bounds.width,
                height: min(bounds.height, MD2ViewConfig.DIMENSION_TEXTFIELD_HEIGHT))
            
            // Add gutter
            self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
            
            return outerDimensions
        }
    }
    
    enum TextFieldType {
        case Standard, Date, Time, Timestamp
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.widgetElement.resignFirstResponder()
        return true
    }
    
    func enable() {
        self.widgetElement.enabled = true
    }
    
    func disable() {
        self.widgetElement.enabled = false
    }
    
    // Event from itself
    func onUpdate() {
        self.value = MD2String(self.widgetElement.text)
        MD2WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
    }
    
    func updateElement() {
        self.widgetElement.text = value.toString()
    }
    
}
