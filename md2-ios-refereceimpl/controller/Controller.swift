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
        // TODO
        
        // Initialize event handlers
        // TODO
        
        // Initialize content providers
        var contentProviderRegistry = ContentProviderRegistry()
        // TODO
        
        // Initialize the view manager
        var viewManager = ViewManager()
        viewManager.window = window
        viewManager.setupView(MD2String("TestView"), view: FlowLayoutPane(name: MD2String("TestFlowLayout")))
        
        // Start initial action of the app
        // TODO
        
    }
}