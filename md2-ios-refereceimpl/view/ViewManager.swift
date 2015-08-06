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
            if viewName.toString() == name {
                // Show view
                
                if let _ = navigationController {
                    // Controller exists, push view on top
                    self.navigationController!.pushViewController(controller, animated: false)
                } else {
                    // First view to show, create and initialize navigationController
                    showRootView(viewName)
                }
                
                break
            }
        }
    }
    
    func setupView(viewName: MD2String, view: LayoutType) {
        // Called once at start-up of the app for each view
        
        // Create view controller with view and add to list
        let controller: MD2ViewController = MD2ViewController(layout: view)
        
        // Initialize view hierarchy
        controller.calculateDimensions()
        
        // Register viewName in internal data structure
        views[viewName.toString()] = controller
    }
    
    func showRootView(viewName:MD2String) {
        for (name, controller) in views {
            if viewName.toString() == name {
                
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