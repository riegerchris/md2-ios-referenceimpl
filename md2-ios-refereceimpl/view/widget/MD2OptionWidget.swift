//
//  MD2OptionWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2OptionWidget: NSObject, MD2SingleWidgetType, MD2WidgetAssistedType, UIPickerViewDataSource, UIPickerViewDelegate, UIGestureRecognizerDelegate {
    
    let widgetId: MD2WidgetMapping
    
    var value: MD2Type {
        didSet {
            updateElement()
        }
    }
    
    var dimensions: MD2Dimension?
    
    var widgetElement: UITextField
    
    var label: MD2String?
    
    var tooltip: MD2String?
    
    var options: Array<String>? = []
    
    var picker: UIPickerView = UIPickerView()
    
    var width: Float?
    
    init(widgetId: MD2WidgetMapping) {
        self.widgetId = widgetId
        self.value = MD2String()
        self.widgetElement = UITextField()
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
        
        // Picker to select value
        picker.delegate = self
        picker.dataSource = self
        picker.backgroundColor = UIColor(rgba: "#dfdfdf")
        self.widgetElement.inputView = picker
        
        // Add tap recognizer on picker field manually
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "pickerViewTapped")
        tapRecognizer.delegate = self
        self.picker.addGestureRecognizer(tapRecognizer)
        
        updateElement()
    }
    
    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension {
        let outerDimensions = MD2Dimension(
            x: bounds.x,
            y: bounds.y,
            width: bounds.width,
            height: MD2ViewConfig.DIMENSION_OPTION_HEIGHT)
        
        // Add gutter
        self.dimensions = MD2UIUtil.innerDimensionsWithGutter(outerDimensions)
        widgetElement.frame = MD2UIUtil.dimensionToCGRect(dimensions!)
        
        return outerDimensions
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
        self.widgetElement.text = options![row]
    }
    
    // Action method to capture single click on picker view element
    func pickerViewTapped() {
        self.widgetElement.text = options![self.picker.selectedRowInComponent(0)]
        // Hide picker element
        self.widgetElement.resignFirstResponder()
    }

    // Some other delegate tries to get the tap first -> allow simultaneous processing
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
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
        MD2WidgetRegistry.instance.getWidget(widgetId)?.setValue(self.value)
    }
    
    func updateElement() {
        self.widgetElement.text = value.toString()
        
        var defaultRowIndex = find(options!, self.value.toString())
        if(defaultRowIndex == nil) { defaultRowIndex = 0 }
        self.picker.selectRow(defaultRowIndex!, inComponent: 0, animated: false)
    }
    
}