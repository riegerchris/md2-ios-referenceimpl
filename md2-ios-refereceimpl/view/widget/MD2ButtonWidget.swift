//
//  MD2ButtonWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2ButtonWidget: MD2SingleWidgetType, MD2WidgetStyleType {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: MD2Dimension?
    
    var buttonType: UIButtonType = UIButtonType.System
    
    var widgetElement: UIButton?
    
    var color: MD2String?
    
    var fontSize: MD2Float? = MD2Float(1.0)
    
    var textStyle: MD2WidgetTextStyle = MD2WidgetTextStyle.Normal
    
    var width: Float?
    
    var frame: CGRect?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        switch buttonType {
        case UIButtonType.System: renderSystemButton(view)
        case UIButtonType.InfoLight: renderInfoButton(view)
        default: renderSystemButton(view)
        }
    }
    
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        var outerDimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_BUTTON_HEIGHT)
        
        // Add gutter
        self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
        // If button already exists (=redraw on orientation change)
        widgetElement?.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        
        return outerDimensions
    }
    
    func enable() {
        self.widgetElement?.enabled = true
    }
    
    func disable() {
        self.widgetElement?.enabled = false
    }
    
    func renderSystemButton(view: UIView) {
        // Create and set value
        widgetElement = (UIButton.buttonWithType(UIButtonType.System) as! UIButton)
        widgetElement!.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        updateElement()
        
        widgetElement!.tag = widgetId.rawValue
        widgetElement!.addTarget(MD2OnClickHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Set default styles
        widgetElement!.layer.borderWidth = 1
        widgetElement!.layer.cornerRadius = 15
        widgetElement!.titleLabel!.textAlignment=NSTextAlignment.Center
        
        // Set custom styles
        if color?.isSet() == true {
            widgetElement!.tintColor = UIColor(rgba: color!.platformValue!)
        }
        
        // Set more defaults
        widgetElement!.layer.borderColor = widgetElement!.tintColor?.CGColor
        widgetElement!.titleLabel!.font = UIFont(name: textStyle.rawValue, size: CGFloat(Float(MD2ViewConfig.FONT_SIZE) * fontSize!.platformValue!))
        
        // Add to surrounding view
        view.addSubview(widgetElement!)
    }
    
    func renderInfoButton(view: UIView) {
        widgetElement = (UIButton.buttonWithType(UIButtonType.InfoLight) as! UIButton)
        widgetElement!.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        widgetElement!.tag = widgetId.rawValue
        
        // Add alert handler
        widgetElement!.addTarget(MD2TooltipHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Add to surrounding view
        view.addSubview(widgetElement!)
    }
    
    func updateElement() {
        widgetElement?.setTitle(self.value.toString(), forState: .Normal)
    }
}
