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
        let mainLayout = FlowLayoutPane(name: MD2String("MainLayout"))
        mainLayout.orientation = FlowLayoutPane.Orientation.Vertical
        
        let labelWidget = LabelWidget(name: MD2String("dummyname"), initialValue: MD2String("YEAH!"))
        //labelWidget.render(self.view, controller: self)
        mainLayout.addWidget(labelWidget)
        let labelWidgetWrapper = WidgetWrapper(widget: labelWidget)
        widgetRegistry.add(labelWidgetWrapper)
        
        let buttonWidget = ButtonWidget(name: MD2String("dummyname2"), initialValue: MD2String("YEAH2!"), action: MD2String("pressme"))
        //buttonWidget.render(self.view, controller: self)
        mainLayout.addWidget(buttonWidget)
        let buttonWidgetWrapper = WidgetWrapper(widget: buttonWidget)
        widgetRegistry.add(buttonWidgetWrapper)
        
        let textFieldWidget = TextFieldWidget(name: MD2String("dummyname3"), initialValue: MD2String("dummytext3"))
        textFieldWidget.placeholder = MD2String("dummyplaceholder")
        //textFieldWidget.render(self.view, controller: self)
        mainLayout.addWidget(textFieldWidget)
        let textFieldWidgetWrapper = WidgetWrapper(widget: textFieldWidget)
        widgetRegistry.add(textFieldWidgetWrapper)
        
        let subLayout = FlowLayoutPane(name: MD2String("SubLayout"))
        subLayout.orientation = FlowLayoutPane.Orientation.Horizontal
        mainLayout.addWidget(subLayout)
        
        let switchWidget = SwitchWidget(name: MD2String("dummyname4"), initialValue: MD2Boolean(true), action: MD2String())
        //switchWidget.render(self.view, controller: self)
        subLayout.addWidget(switchWidget)
        let switchWidgetWrapper = WidgetWrapper(widget: switchWidget)
        widgetRegistry.add(switchWidgetWrapper)
        
        let switchWidget2 = SwitchWidget(name: MD2String("dummyname5"), initialValue: MD2Boolean(false), action: MD2String())
        //switchWidget.render(self.view, controller: self)
        subLayout.addWidget(switchWidget2)
        let switchWidget2Wrapper = WidgetWrapper(widget: switchWidget2)
        widgetRegistry.add(switchWidget2Wrapper)
        
        
        // Initialize event handlers
        let mainLayoutButtonHandler = OnClickHandler()
        
        // Initialize content providers
        var contentProviderRegistry = ContentProviderRegistry()
        // TODO
        
        // Initialize the view manager
        var viewManager = ViewManager()
        viewManager.window = window
        
        // Initialize all views
        viewManager.setupView(MD2String("MainView"), view: mainLayout)
        
        // Initialize data mapper
        let dataMapper = DataMapper()
        // TODO
        
        // Initialize and register Actions
        let mainPageNextAction = GotoView(actionSignature: MD2String("mainPageNextAction"), widgetRegistry: widgetRegistry, eventHandler: mainLayoutButtonHandler, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: MD2String("view2"))
        mainLayoutButtonHandler.registerAction(mainPageNextAction, widget: buttonWidgetWrapper)
        
        
        // Start initial action of the app
        // TODO
        
    }
}