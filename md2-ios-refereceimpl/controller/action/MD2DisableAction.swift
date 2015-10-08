//
//  MD2DisableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

/// Action to disable a view element.
class MD2DisableAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String
    
    /// The view element to disable.
    let viewElement: MD2Widget
    
    /**
        Default initializer.
    
        - parameter actionSignature: The action identifier.
        - parameter The: view element to disable.
    */
    init(actionSignature: String, viewElement: MD2Widget) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
    }
    
    /// Execute the action commands: Disable a view element.
    func execute() {
        self.viewElement.disable()
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}