//
//  ButtonWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ButtonWidget: SingleWidgetType, WidgetStyleType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: Dimension?
    
    var buttonType: UIButtonType = UIButtonType.System
    
    var buttonElement: UIButton?
    
    var color: MD2String?
    
    var fontSize: MD2Float? = MD2Float(1.0)
    
    var textStyle: WidgetTextStyle = WidgetTextStyle.Normal
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
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
    
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        var outerDimensions = Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: min(bounds.height, ViewConfig.DIMENSION_BUTTON_HEIGHT))
        
        // Add gutter
        self.dimensions = UIUtil.innerDimensionsWithGutter(outerDimensions)
        
        return outerDimensions
    }
    
    func enable() {
        self.buttonElement?.enabled = true
    }
    
    func disable() {
        self.buttonElement?.enabled = false
    }
    
    func renderSystemButton(view: UIView) {
        // Create and set value
        let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        self.buttonElement = button // TODO refactor
        button.frame = UIUtil.dimensionToCGRect(dimensions!)
        updateElement()
        button.tag = widgetId.rawValue
        button.addTarget(OnTouchHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Set default styles
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.titleLabel!.textAlignment=NSTextAlignment.Center
        
        // Set custom styles
        if color?.isSet() == true {
            button.tintColor = UIColor(rgba: color!.platformValue!)
        }
        
        // Set more defaults
        button.layer.borderColor = button.tintColor?.CGColor
        button.titleLabel!.font = UIFont(name: textStyle.rawValue, size: CGFloat(Float(ViewConfig.FONT_SIZE) * fontSize!.platformValue!))
        
        // Add to surrounding view
        view.addSubview(button)
    }
    
    func renderInfoButton(view: UIView) {
        let button = UIButton.buttonWithType(UIButtonType.InfoLight) as! UIButton
        button.frame = UIUtil.dimensionToCGRect(dimensions!)
        button.tag = widgetId.rawValue
        
        // Add alert handler
        button.addTarget(TooltipHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Add to surrounding view
        view.addSubview(button)
        self.buttonElement = button
    }
    
    func updateElement() {
        buttonElement?.setTitle(self.value.toString(), forState: .Normal)
    }
}
