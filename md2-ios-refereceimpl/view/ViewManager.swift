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
    
    var views: Dictionary<String, MD2ViewController> = [:]
    
    func goto(viewName: MD2String) {
        for (name, controller) in views {
            if viewName.equals(MD2String(controller.layout.widgetId.description)) { // TODO widgetId != viewName?
                // Show view
                self.navigationController!.pushViewController(controller, animated: false)
                break
            }
        }
    }
    
    func setupView(viewName: MD2String, view: LayoutType) { // TODO view = layout?
        // TODO why viewName explicit/differing from view.widgetId 
        
        // Called once at start-up of the app
        
        // TODO create widgetwrappers, register wrappers in registry, store actual view instances in internal data structure
        
        // Create controller with view and add to list
        let controller: MD2ViewController = MD2ViewController(layout: view)
        
        controller.calculateDimensions()
        
        views[viewName.toString().platformValue!] = controller
    }
    
    func showRootView(viewName:MD2String) {
        for (name, controller) in views {
            if viewName.equals(MD2String(controller.layout.widgetId.description)) { // TODO widgetId != viewName?
                
                // Define navigation controller
                navigationController = UINavigationController(rootViewController: controller)
                
                // Set and show initial view
                window!.rootViewController = self.navigationController
                navigationController!.setNavigationBarHidden(true, animated: false)
                
                break
            }
        }
    }
    
}