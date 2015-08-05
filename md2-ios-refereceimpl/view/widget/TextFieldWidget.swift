//
//  TextFieldWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class TextFieldWidget: NSObject, SingleWidgetType, UITextFieldDelegate {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: Dimension?
    
    var placeholder: MD2String?
    
    var textField: UITextField?
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var type: TextFieldType = TextFieldType.Standard
    
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
        let textField = UITextField()
        textField.frame = UIUtil.dimensionToCGRect(dimensions!)
        textField.placeholder = placeholder?.platformValue
        textField.text = value?.toString()
        
        textField.tag = widgetId.rawValue
        textField.addTarget(OnChangeHandler.instance, action: "fire:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Set styling
        textField.backgroundColor = UIColor.grayColor() // TODO styling
        textField.borderStyle = UITextBorderStyle.Line
        
        // Add to surrounding view
        textField.delegate = self
        view.addSubview(textField)
        self.textField = textField
    }
    
    func calculateDimensions(bounds: Dimension) {
        // Add gutter
        self.dimensions = Dimension(
            x: bounds.x + ViewConfig.GUTTER,
            y: bounds.y + ViewConfig.GUTTER,
            width: bounds.width - 2 * ViewConfig.GUTTER,
            height: bounds.height - 2 * ViewConfig.GUTTER)
    }
    
    enum TextFieldType {
        case Standard, Date, Time, Timestamp
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.textField?.resignFirstResponder()
        return true
    }
    
    func enable() {
        self.textField?.enabled = true
    }
    
    func disable() {
        self.textField?.enabled = false
    }

}
