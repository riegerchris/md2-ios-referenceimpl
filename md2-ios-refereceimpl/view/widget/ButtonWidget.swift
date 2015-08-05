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
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: Dimension?
    
    var buttonElement: UIButton?
    
    var color: MD2String?
    
    var fontSize: MD2Integer?
    
    var textStyle: WidgetTextStyle = WidgetTextStyle.Normal
    
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
        /*   TODO     button.buttonType = InfoLight Custom System */
        let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = UIUtil.dimensionToCGRect(dimensions!)
        button.setTitle(value?.toString().platformValue, forState: .Normal)
        button.tag = widgetId.rawValue
        button.addTarget(OnTouchHandler.instance, action: "fire:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Set default styles
        button.layer.borderWidth = 0.3
        button.layer.cornerRadius = 2
        button.titleLabel!.textAlignment=NSTextAlignment.Center

        // Set custom styles
        if color?.isSet() == true {
            button.backgroundColor = UIColor(rgba: color!.platformValue!)
        }
        
        if fontSize?.isSet() == nil || fontSize?.isSet() == false {
            fontSize = MD2Integer(ViewConfig.FONT_SIZE)
        }
        
        button.titleLabel!.font = UIFont(name: textStyle.rawValue, size: CGFloat(fontSize!.platformValue!))
        
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
    
    func enable() {
        self.buttonElement?.enabled = true
    }
    
    func disable() {
        self.buttonElement?.enabled = false
    }
    
}
