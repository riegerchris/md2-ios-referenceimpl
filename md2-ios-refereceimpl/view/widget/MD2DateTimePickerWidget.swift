//
//  MD2DateTimePickerWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2DateTimePickerWidget: NSObject, MD2SingleWidgetType, UIGestureRecognizerDelegate {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: MD2Dimension?
    
    var pickerElement: UIDatePicker?
    
    var widgetElement: UITextField
   
    var pickerMode: UIDatePickerMode?
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UITextField()

        // Default
        self.pickerMode = UIDatePickerMode.DateAndTime
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Text field to display result
        widgetElement.placeholder = MD2ViewConfig.OPTION_WIDGET_PLACEHOLDER
        
        widgetElement.tag = widgetId.rawValue
        widgetElement.addTarget(self, action: "onUpdate", forControlEvents: UIControlEvents.ValueChanged)
        
        // Set styling
        widgetElement.backgroundColor = UIColor(rgba: "#fff")
        widgetElement.borderStyle = UITextBorderStyle.RoundedRect
        widgetElement.font = UIFont(name: MD2ViewConfig.FONT_NAME.rawValue, size: CGFloat(MD2ViewConfig.FONT_SIZE))
        
        // Add to surrounding view
        view.addSubview(widgetElement)
        
        // Create and set value
        let pickerElement = UIDatePicker()
        pickerElement.datePickerMode = pickerMode!
        pickerElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        pickerElement.backgroundColor = UIColor(rgba: "#dfdfdf")
        
        pickerElement.tag = widgetId.rawValue
        pickerElement.addTarget(self, action: "updateTextField", forControlEvents: UIControlEvents.ValueChanged)
        
        widgetElement.inputView = pickerElement
        self.pickerElement = pickerElement
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "pickerViewTapped")
        tapRecognizer.delegate = self
        self.pickerElement!.addGestureRecognizer(tapRecognizer)
        
        // Set value
        updateElement()
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        let outerDimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_DATE_TIME_PICKER_HEIGHT)
        
        // Add gutter
        self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
        widgetElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        
        return outerDimensions
    }
    
    // Action method to capture single click on picker view element
    func pickerViewTapped() {
        updateTextField()
        // Hide picker element
        self.widgetElement.resignFirstResponder()
    }
    
    // Some other delegate tries to get the tap first -> allow simultaneous processing
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func updateTextField() {
        let formatter = NSDateFormatter()
        
        switch self.pickerMode! {
        case UIDatePickerMode.DateAndTime:  formatter.dateFormat = MD2ViewConfig.DATE_TIME_FORMAT
        case UIDatePickerMode.Date:         formatter.dateFormat = MD2ViewConfig.DATE_FORMAT
        case UIDatePickerMode.Time:         formatter.dateFormat = MD2ViewConfig.TIME_FORMAT
        default:                            formatter.dateFormat = MD2ViewConfig.DATE_TIME_FORMAT
        }
        
        self.widgetElement.text = formatter.stringFromDate(self.pickerElement!.date)
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
        
        let formatter = NSDateFormatter()
        switch self.pickerMode! {
        case UIDatePickerMode.DateAndTime:  formatter.dateFormat = MD2ViewConfig.DATE_TIME_FORMAT
        case UIDatePickerMode.Date:         formatter.dateFormat = MD2ViewConfig.DATE_FORMAT
        case UIDatePickerMode.Time:         formatter.dateFormat = MD2ViewConfig.TIME_FORMAT
        default:                            formatter.dateFormat = MD2ViewConfig.DATE_TIME_FORMAT
        }
        
        let date: NSDate? = formatter.dateFromString(self.value.toString())
        if let _ = date {
            self.pickerElement!.setDate(date!, animated: false)
        }
    }
    
}