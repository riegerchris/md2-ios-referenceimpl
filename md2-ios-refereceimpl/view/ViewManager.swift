//
//  ViewManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ViewManager {
    
    var window: UIWindow?
    
    var navigationController: UINavigationController?
    
    var views: Dictionary<String, MD2ViewController> = [:]//Array<LayoutType> = []
    
    func goto(viewName: MD2String) {
        for (name, controller) in views {
            if viewName.equals(MD2String(controller.layout.widgetId.description)) { // TODO widgetId != viewName)
                self.navigationController!.pushViewController(controller, animated: false)//SecondViewController(layout: view), animated:false)
                // TODO invoke view (stack or root??)
                break
            }
        }
    }
    
    func setupView(viewName: MD2String, view: LayoutType) { // TODO view = layout?
        // TODO why viewName explicit/differing from view.widgetId 
        
        // Called once at start-up of the app
        
        // TODO create widgetwrappers, register wrappers in registry, store actual view instances in internal data structure
        
        // Create views programatically without storyboard
        // Step 1: Create view controller instance
        // Step 2: Create a navigation controller with view controller instance as root
        // Step 3: Navigation controller instance is set as rootviewcontroller of the window
        
        if viewName.equals(MD2String("MainView")) {
        
            var initialController: MD2ViewController = MD2ViewController(layout: view)
            navigationController = UINavigationController(rootViewController: initialController)
        
            // Set and show initial view
            window!.rootViewController = self.navigationController
            navigationController!.setNavigationBarHidden(true, animated: false)
        
            views[viewName.toString().platformValue!] = initialController
            
        } else if viewName.equals(MD2String("View2")) {
            var secondController: MD2ViewController = MD2ViewController(layout: view)
            
            views[viewName.toString().platformValue!] = secondController
        }
    }
    
}