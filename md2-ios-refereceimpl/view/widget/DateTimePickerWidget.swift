//
//  DateTimePickerWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class DateTimePickerWidget: NSObject, SingleWidgetType, UIGestureRecognizerDelegate {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type?
    
    var dimensions: Dimension?
    
    var pickerElement: UIDatePicker?
    
    var resultElement: UITextField?
   
    var pickerMode: UIDatePickerMode?
    
    var width: Float?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type) {
        self.widgetId = widgetId
        self.value = initialValue

        // Default
        self.pickerMode = UIDatePickerMode.DateAndTime
    }
    
    func render(view: UIView, controller: UIViewController) {
        if dimensions == nil {
            // Element is not specified in layout. Maybe grid with not enough cells?!
            return
        }
        
        // Text field to display result
        let textField = UITextField()
        textField.frame = UIUtil.dimensionToCGRect(dimensions!)
        textField.placeholder = ViewConfig.OPTION_WIDGET_PLACEHOLDER
        //textField.text = value?.toString()
        
        textField.tag = widgetId.rawValue
        textField.addTarget(OnChangeHandler.instance, action: "fire:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Set styling
        textField.backgroundColor = UIColor(rgba: "#fff")
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.font = UIFont(name: ViewConfig.FONT_NAME.rawValue, size: CGFloat(ViewConfig.FONT_SIZE))
        
        // Add to surrounding view
        view.addSubview(textField)
        self.resultElement = textField
        
        // Create and set value
        let pickerElement = UIDatePicker()
        pickerElement.datePickerMode = pickerMode!
        pickerElement.frame = UIUtil.dimensionToCGRect(dimensions!)
        pickerElement.backgroundColor = UIColor(rgba: "#dfdfdf")
        // TODO set initial picker value
        
        pickerElement.tag = widgetId.rawValue
        pickerElement.addTarget(self, action: "updateTextField", forControlEvents: UIControlEvents.ValueChanged)
        
        textField.inputView = pickerElement
        
        // Add to surrounding view
        self.pickerElement = pickerElement
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "pickerViewTapped")
        tapRecognizer.delegate = self
        self.pickerElement!.addGestureRecognizer(tapRecognizer)
    }
    
    func calculateDimensions(bounds: Dimension) -> Dimension {
        let outerDimensions = Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: min(bounds.height, ViewConfig.DIMENSION_DATE_TIME_PICKER_HEIGHT))
        
        // Add gutter
        self.dimensions = UIUtil.innerDimensionsWithGutter(outerDimensions)
        
        return outerDimensions
    }
    
    // Action method to capture single click on picker view element
    func pickerViewTapped() {
        updateTextField()
        // Hide picker element
        self.resultElement!.resignFirstResponder()
    }
    
    // Some other delegate tries to get the tap first -> allow simultaneous processing
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func updateTextField() {
        let formatter = NSDateFormatter()
        
        switch self.pickerMode! {
        case UIDatePickerMode.DateAndTime:  formatter.dateFormat = ViewConfig.DATE_TIME_FORMAT
        case UIDatePickerMode.Date:         formatter.dateFormat = ViewConfig.DATE_FORMAT
        case UIDatePickerMode.Time:         formatter.dateFormat = ViewConfig.TIME_FORMAT
        default:                            formatter.dateFormat = ViewConfig.DATE_TIME_FORMAT
        }
        
        self.resultElement!.text = formatter.stringFromDate(self.pickerElement!.date)
    }
    
    func enable() {
        self.resultElement?.enabled = true
    }
    
    func disable() {
        self.resultElement?.enabled = false
    }
}