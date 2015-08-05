//
//  OptionWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class OptionWidget: NSObject, SingleWidgetType, UIPickerViewDataSource, UIPickerViewDelegate, UIGestureRecognizerDelegate {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type?
    
    var dimensions: Dimension?
    
    var optionElement: UITextField?
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var options: Array<String>? = []
    
    var picker: UIPickerView = UIPickerView()
    
    init(widgetId: WidgetMapping, initialValue: MD2Type) {
        self.widgetId = widgetId
        self.value = initialValue
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
        textField.text = value?.toString().platformValue
        
        textField.tag = widgetId.rawValue
        textField.addTarget(OnChangeHandler.instance, action: "fire:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Set styling
        textField.backgroundColor = UIColor.grayColor() // TODO styling
        textField.borderStyle = UITextBorderStyle.Line
        
        // Add to surrounding view
        view.addSubview(textField)
        self.optionElement = textField

        // Picker to select value
        picker.delegate = self
        picker.dataSource = self
        picker.backgroundColor = UIColor(rgba: "#eee")
        self.optionElement!.inputView = picker
        
        // Add tap recognizer on picker field manually
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "pickerViewTapped")
        tapRecognizer.delegate = self
        self.picker.addGestureRecognizer(tapRecognizer)
        
         // TODO preselect value
    }
    
    func calculateDimensions(bounds: Dimension) {
        // Add gutter
        self.dimensions = Dimension(
            x: bounds.x + ViewConfig.GUTTER,
            y: bounds.y + ViewConfig.GUTTER,
            width: bounds.width - 2 * ViewConfig.GUTTER,
            height: bounds.height - 2 * ViewConfig.GUTTER)
    }
    
    // Data source methods
    @objc func numberOfComponentsInPickerView(colorPicker: UIPickerView) -> Int {
        return 1
    }
    
    @objc func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options!.count
    }
    
    // Delegate methods
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return options![row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // Update text field on scrolling
        self.optionElement!.text = options![row]
    }
    
    // Action method to capture single click on picker view element
    func pickerViewTapped() {
        self.optionElement!.text = options![self.picker.selectedRowInComponent(0)]
        // Hide picker element
        self.optionElement!.resignFirstResponder()
    }

    // Some other delegate tries to get the tap first -> allow simultaneous processing
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func enable() {
        self.optionElement?.enabled = true
    }
    
    func disable() {
        self.optionElement?.enabled = false
    }
    
}