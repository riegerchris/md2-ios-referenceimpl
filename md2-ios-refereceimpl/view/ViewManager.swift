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
    
    func goto(viewName: MD2String) {
        // TODO
    }
    
    func setupView(viewName: MD2String, view: LayoutType) { // TODO view = layout?
        // Called once at start-up of the app
        
        // TODO create widgetwrappers, register wrappers in registry, store actual view instances in internal data structure
        
        // Create views programatically without storyboard
        // Step 1: Create view controller instance
        // Step 2: Create a navigation controller with view controller instance as root
        // Step 3: Navigation controller instance is set as rootviewcontroller of the window
        
        var studyController: InitialViewController = InitialViewController(nibName: nil, bundle:nil)
        navigationController = UINavigationController(rootViewController: studyController)
        
        window!.rootViewController = self.navigationController
        navigationController!.setNavigationBarHidden(true, animated: false)
        
    }
    
}