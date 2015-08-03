//
//  LabelWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class LabelWidget: SingleWidgetType, WidgetStyleType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: Dimension?
    
    var labelElement: UILabel?
    
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
        let label = UILabel()
        label.text = value?.toString().platformValue
        label.frame = UIUtil.dimensionToCGRect(dimensions!)
        
        // Set default styles
        //label.textAlignment = .Center
        //label.numberOfLines = 5
        
        // Set custom styles
        if color?.isSet() == true {
            label.textColor = UIColor(rgba: color!.platformValue!)
        }
        
        if fontSize?.isSet() == nil || fontSize?.isSet() == false {
            fontSize = MD2Integer(ViewConfig.FONT_SIZE)
        }
        
        label.font = UIFont(name: textStyle.rawValue, size: CGFloat(fontSize!.platformValue!))
        
        // Add to surrounding view
        view.addSubview(label)
        self.labelElement = label
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