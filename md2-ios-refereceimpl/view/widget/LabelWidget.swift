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
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: Dimension?
    
    var widgetElement: UILabel
    
    var color: MD2String?
    
    var fontSize: MD2Float? = MD2Float(1.0)
    
    var textStyle: WidgetTextStyle = WidgetTextStyle.Normal
    
    var width: Float?
    
    init(widgetId: WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UILabel()
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Set value
        updateElement()
        widgetElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        
        // Set default styles
        //label.textAlignment = .Center
        //label.numberOfLines = 5
        
        // Set custom styles
        if color?.isSet() == true {
            widgetElement.textColor = UIColor(rgba: color!.platformValue!)
        }
        
        widgetElement.font = UIFont(name: textStyle.rawValue, size: CGFloat(Float(ViewConfig.FONT_SIZE) * fontSize!.platformValue!))
        
        // Add to surrounding view
        view.addSubview(widgetElement)
    }
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        let outerDimensions = Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: min(bounds.height, ViewConfig.DIMENSION_LABEL_HEIGHT))
        
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
    
    func updateElement() {
        self.widgetElement.text = value.toString()
    }

}