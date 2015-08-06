//
//  Controller.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class Controller {
    
    func run(window: UIWindow) {
        // Initialize the widget registry
        var widgetRegistry = WidgetRegistry.instance

        // Initialize all view elements
        let mainLayout = FlowLayoutPane(widgetId: WidgetMapping.MainView)
        mainLayout.orientation = FlowLayoutPane.Orientation.Vertical
        //mainLayout.columns = MD2Integer(2)
        //mainLayout.rows = MD2Integer(2)
        
        let labelWidget = LabelWidget(widgetId: WidgetMapping.Label1, initialValue: MD2String("YEAH!"))
        labelWidget.textStyle = WidgetTextStyle.Italic
        labelWidget.fontSize = MD2Integer(15)
        mainLayout.addWidget(labelWidget)
        let labelWidgetWrapper = WidgetWrapper(widget: labelWidget)
        widgetRegistry.add(labelWidgetWrapper)
        
        let buttonWidget = ButtonWidget(widgetId: WidgetMapping.Button1, initialValue: MD2String("YEAH2!"))
        buttonWidget.buttonType = UIButtonType.System
        buttonWidget.textStyle = WidgetTextStyle.Italic
        buttonWidget.fontSize = MD2Integer(22)
        //buttonWidget.color = MD2String("#FF0000")
        mainLayout.addWidget(buttonWidget)
        let buttonWidgetWrapper = WidgetWrapper(widget: buttonWidget)
        widgetRegistry.add(buttonWidgetWrapper)
        
        let textFieldWidget = TextFieldWidget(widgetId: WidgetMapping.TextField1, initialValue: MD2String("dummytext3"))
        textFieldWidget.tooltip = MD2String("Help message!")
        textFieldWidget.placeholder = MD2String("dummyplaceholder")
        mainLayout.addWidget(textFieldWidget)
        let textFieldWidgetWrapper = WidgetWrapper(widget: textFieldWidget)
        widgetRegistry.add(textFieldWidgetWrapper)
        
        let datePicker = DateTimePickerWidget(widgetId: WidgetMapping.DatePicker1, initialValue: MD2DateTime())
        datePicker.pickerMode = UIDatePickerMode.Time
        mainLayout.addWidget(datePicker)
        let datePickerWrapper = WidgetWrapper(widget: datePicker)
        widgetRegistry.add(datePickerWrapper)
        
        let optionWidget = OptionWidget(widgetId: WidgetMapping.Option1, initialValue: MD2String("dummytext3"))
        optionWidget.options = ComplaintStatus().getAllValues()
        mainLayout.addWidget(optionWidget)
        let optionFieldWidgetWrapper = WidgetWrapper(widget: optionWidget)
        widgetRegistry.add(optionFieldWidgetWrapper)
        
        let subLayout = FlowLayoutPane(widgetId: WidgetMapping.SubLayout1)
        subLayout.orientation = FlowLayoutPane.Orientation.Horizontal
        mainLayout.addWidget(subLayout)
        
        let switchWidget = SwitchWidget(widgetId: WidgetMapping.Switch1, initialValue: MD2Boolean(true))
        subLayout.addWidget(switchWidget)
        let switchWidgetWrapper = WidgetWrapper(widget: switchWidget)
        widgetRegistry.add(switchWidgetWrapper)
        
        let switchWidget2 = SwitchWidget(widgetId: WidgetMapping.Switch2, initialValue: MD2Boolean(false))
        subLayout.addWidget(switchWidget2)
        let switchWidget2Wrapper = WidgetWrapper(widget: switchWidget2)
        widgetRegistry.add(switchWidget2Wrapper)
        
        let spacer = SpacerWidget(widgetId: WidgetMapping.Spacer)
        mainLayout.addWidget(spacer)
        // No wrapper needed
        
        let secondView = FlowLayoutPane(widgetId: WidgetMapping.View2)
        secondView.orientation = FlowLayoutPane.Orientation.Vertical
        
        let labelWidget2 = LabelWidget(widgetId: WidgetMapping.Label2, initialValue: MD2String("YEAH2222!"))
        secondView.addWidget(labelWidget2)
        let labelWidgetWrapper2 = WidgetWrapper(widget: labelWidget2)
        widgetRegistry.add(labelWidgetWrapper2)
        
        // Initialize event handlers
        let onTouchHandler = OnTouchHandler.instance
        
        // Initialize content providers
        var contentProviderRegistry = ContentProviderRegistry()
        // TODO
        
        // Initialize the view manager
        var viewManager = ViewManager()
        viewManager.window = window
        
        // Initialize all views
        viewManager.setupView(MD2String("MainView"), view: mainLayout)
        viewManager.setupView(MD2String("View2"), view: secondView)
        
        // Initialize data mapper
        let dataMapper = DataMapper()
        // TODO
        
        // Initialize and register Actions
        let mainPageNextAction = GotoViewAction(actionSignature: MD2String("mainPageNextAction"), widgetRegistry: widgetRegistry, eventHandler: onTouchHandler, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: WidgetMapping.View2)
        onTouchHandler.registerAction(mainPageNextAction, widget: buttonWidgetWrapper)
        
        
        // Start initial action of the app
        // TODO
        viewManager.showRootView(MD2String("MainView"))
       
        println("done")
    }
}