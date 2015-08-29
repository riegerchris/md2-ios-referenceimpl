//
//  MD2ViewManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

/**
The view manager.
*/
class MD2ViewManager {
    
    /// The singleton instance
    static let instance: MD2ViewManager = MD2ViewManager()
    
    /// The window object of the app
    var window: UIWindow?
    
    /// The main navigation controller
    var navigationController: UINavigationController?
    
    /// The registry of view names and respective controllers
    var views: Dictionary<String, MD2ViewController> = [:]
    
    /// Singleton initializer
    private init() {
        // Nothing to initialize
    }
    
    /**
    Search for a view name and push the respective view on top of the navigation controller.
    
    :param: viewName The name of the view, i.e. the outermost layout name.
    */
    func goto(viewName: String) {
        for (name, controller) in views {
            if viewName == name {
                // View found -> show
                
                if let _ = navigationController {
                    // Check if the view already exists in the navigation controller stack
                    // Pushing the same view controller instance more than once is not allowed and would result in an error
                    if let _ = controller.navigationController {
                        self.navigationController!.popToViewController(controller, animated: true)
                    } else {
                        // Controller exists, push view on top
                        self.navigationController!.pushViewController(controller, animated: true)
                    }
                } else {
                    // First view to show, create and initialize navigationController
                    showRootView(viewName)
                }
                break
            }
        }
    }
    
    /**
    Setup the specified view.
    
    *Notice* Called once per view on startup of the app.
    
    :param: viewName The name of the view, i.e. the outermost layout name.
    :param: view The layout of the app to use as root view.
    */
    func setupView(viewName: String, view: MD2LayoutType) {
        // Called once at start-up of the app for each view
        
        // Create view controller with view and add to list
        let controller: MD2ViewController = MD2ViewController(layout: view)
        
        // Initialize view hierarchy
        controller.calculateDimensions()
        
        // Register viewName in internal data structure
        views[viewName] = controller
    }
    
    /**
    Set the registered viewName as root view in a navigation controller and show it.
    
    :param: viewName The name of the view, i.e. the outermost layout name.
    */
    func showRootView(viewName:String) {
        for (name, controller) in views {
            if viewName == name {
                
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
