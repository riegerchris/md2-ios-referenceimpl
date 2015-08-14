//
//  ViewManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ViewManager {
    
    static let instance: ViewManager = ViewManager()
    
    var window: UIWindow?
    
    var navigationController: UINavigationController?
    
    var views: Dictionary<String, MD2ViewController> = [:]
    
    func goto(viewName: String) {
        for (name, controller) in views {
            if viewName == name {
                // Show view
                
                if let _ = navigationController {
                    // Check if the view already exists in stack (pushing the same view controller instance more than once is not allowed)
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
    
    func setupView(viewName: String, view: LayoutType) {
        // Called once at start-up of the app for each view
        
        // Create view controller with view and add to list
        let controller: MD2ViewController = MD2ViewController(layout: view)
        
        // Initialize view hierarchy
        controller.calculateDimensions()
        
        // Register viewName in internal data structure
        views[viewName] = controller
    }
    
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