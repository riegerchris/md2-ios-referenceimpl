//
//  TextFieldWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class TextFieldWidget: NSObject, SingleWidgetType, WidgetAssistedType, UITextFieldDelegate {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: Dimension?
    
    var placeholder: MD2String?
    
    var widgetElement: UITextField
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var tooltipDimensions: Dimension?
    
    var type: TextFieldType = TextFieldType.Standard
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
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
        widgetElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        widgetElement.placeholder = placeholder?.platformValue
        updateElement()
        
        widgetElement.tag = widgetId.rawValue
        widgetElement.addTarget(self, action: "onUpdate", forControlEvents: (UIControlEvents.EditingDidEnd | UIControlEvents.EditingDidEndOnExit))
        
        // Set styling
        widgetElement.backgroundColor = UIColor.whiteColor()
        widgetElement.borderStyle = UITextBorderStyle.RoundedRect
        widgetElement.font = UIFont(name: ViewConfig.FONT_NAME.rawValue, size: CGFloat(ViewConfig.FONT_SIZE))
        
        // Add to surrounding view
        widgetElement.delegate = self
        view.addSubview(widgetElement)
        
        // If tooltip info is available show info button
        if self.tooltip != nil && self.tooltip!.isSet() {
            let infoButton = ButtonWidget(widgetId: self.widgetId)
            infoButton.buttonType = UIButtonType.InfoLight
            infoButton.dimensions = self.tooltipDimensions
            infoButton.render(view, controller: controller)
        }
    }
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        var outerDimensions: Dimension = bounds
        
        // If tooltip info is available show info button
        if self.tooltip != nil && self.tooltip!.isSet() {
            outerDimensions = Dimension(
                x: bounds.x,
                y: bounds.y,
                width: bounds.width,
                height: min(bounds.height, ViewConfig.DIMENSION_TEXTFIELD_HEIGHT))
            
            var textFieldDimensions = outerDimensions - Dimension(
                x: Float(0.0),
                y: Float(0.0),
                width: Float(ViewConfig.TOOLTIP_WIDTH),
                height: Float(0.0))
            
            // Add gutter
            self.dimensions = UIUtil.innerDimensionsWithGutter(textFieldDimensions)
            
            self.tooltipDimensions = Dimension(
                x: (outerDimensions.x + outerDimensions.width) - Float(ViewConfig.TOOLTIP_WIDTH) - ViewConfig.GUTTER / 2,
                // center vertically
                y: textFieldDimensions.y + (textFieldDimensions.height - ViewConfig.TOOLTIP_WIDTH) / 2,
                width: ViewConfig.TOOLTIP_WIDTH,
                height: ViewConfig.TOOLTIP_WIDTH)
            
            return outerDimensions
            
        } else {
            // Normal full-width field
            outerDimensions = Dimension(
                x: bounds.x,
                y: bounds.y,
                width: bounds.width,
                height: min(bounds.height, ViewConfig.DIMENSION_TEXTFIELD_HEIGHT))
            
            // Add gutter
            self.dimensions = UIUtil.innerDimensionsWithGutter(outerDimensions)
            
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
        WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
    }
    
    func updateElement() {
        self.widgetElement.text = value.toString()
    }
    
}
