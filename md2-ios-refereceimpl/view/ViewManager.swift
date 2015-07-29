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
    
    var views: Array<LayoutType> = []
    
    func goto(viewName: MD2String) {
        for view in views {
            if viewName.equals(view.name) {
                self.navigationController!.pushViewController(SecondViewController(layout: view), animated:false)
                // TODO invoke view (stack or root??)
                break
            }
        }
    }
    
    func setupView(viewName: MD2String, view: LayoutType) { // TODO view = layout?
        // Called once at start-up of the app
        
        // TODO create widgetwrappers, register wrappers in registry, store actual view instances in internal data structure
        
        // Create views programatically without storyboard
        // Step 1: Create view controller instance
        // Step 2: Create a navigation controller with view controller instance as root
        // Step 3: Navigation controller instance is set as rootviewcontroller of the window
        
       
        
        var initialController: InitialViewController = InitialViewController(layout: view)
        navigationController = UINavigationController(rootViewController: initialController)
        
        // Set and show initial view
        window!.rootViewController = self.navigationController
        navigationController!.setNavigationBarHidden(true, animated: false)
        
        views.append(view)
    }
    
}