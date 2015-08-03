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
        var widgetRegistry = WidgetRegistry()

        // Initialize all view elements
        let mainLayout = FlowLayoutPane(widgetId: WidgetMapping.MainView)
        mainLayout.orientation = FlowLayoutPane.Orientation.Vertical
        
        let labelWidget = LabelWidget(widgetId: WidgetMapping.Label1, initialValue: MD2String("YEAH!"))
        //labelWidget.render(self.view, controller: self)
        mainLayout.addWidget(labelWidget)
        let labelWidgetWrapper = WidgetWrapper(widget: labelWidget)
        widgetRegistry.add(labelWidgetWrapper)
        
        let buttonWidget = ButtonWidget(widgetId: WidgetMapping.Button1, initialValue: MD2String("YEAH2!"), action: MD2String("pressme"))
        //buttonWidget.render(self.view, controller: self)
        mainLayout.addWidget(buttonWidget)
        let buttonWidgetWrapper = WidgetWrapper(widget: buttonWidget)
        widgetRegistry.add(buttonWidgetWrapper)
        
        let textFieldWidget = TextFieldWidget(widgetId: WidgetMapping.TextField1, initialValue: MD2String("dummytext3"))
        textFieldWidget.placeholder = MD2String("dummyplaceholder")
        //textFieldWidget.render(self.view, controller: self)
        mainLayout.addWidget(textFieldWidget)
        let textFieldWidgetWrapper = WidgetWrapper(widget: textFieldWidget)
        widgetRegistry.add(textFieldWidgetWrapper)
        
        let subLayout = FlowLayoutPane(widgetId: WidgetMapping.SubLayout1)
        subLayout.orientation = FlowLayoutPane.Orientation.Horizontal
        mainLayout.addWidget(subLayout)
        
        let switchWidget = SwitchWidget(widgetId: WidgetMapping.Switch1, initialValue: MD2Boolean(true), action: MD2String())
        //switchWidget.render(self.view, controller: self)
        subLayout.addWidget(switchWidget)
        let switchWidgetWrapper = WidgetWrapper(widget: switchWidget)
        widgetRegistry.add(switchWidgetWrapper)
        
        let switchWidget2 = SwitchWidget(widgetId: WidgetMapping.Switch2, initialValue: MD2Boolean(false), action: MD2String())
        //switchWidget.render(self.view, controller: self)
        subLayout.addWidget(switchWidget2)
        let switchWidget2Wrapper = WidgetWrapper(widget: switchWidget2)
        widgetRegistry.add(switchWidget2Wrapper)
        
        let spacer = SpacerWidget(widgetId: WidgetMapping.Spacer)
        mainLayout.addWidget(spacer)
        // No wrapper
        
        let secondView = FlowLayoutPane(widgetId: WidgetMapping.View2)
        secondView.orientation = FlowLayoutPane.Orientation.Vertical
        
        let labelWidget2 = LabelWidget(widgetId: WidgetMapping.Label2, initialValue: MD2String("YEAH2222!"))
        secondView.addWidget(labelWidget2)
        let labelWidgetWrapper2 = WidgetWrapper(widget: labelWidget2)
        widgetRegistry.add(labelWidgetWrapper2)
        
        // Initialize event handlers
        let onClickHandler = OnClickHandler.instance
        
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
        let mainPageNextAction = GotoView(actionSignature: MD2String("mainPageNextAction"), widgetRegistry: widgetRegistry, eventHandler: onClickHandler, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: WidgetMapping.View2)
        onClickHandler.registerAction(mainPageNextAction, widget: buttonWidgetWrapper)
        
        
        // Start initial action of the app
        // TODO
        viewManager.showRootView(MD2String("MainView"))
    }
}