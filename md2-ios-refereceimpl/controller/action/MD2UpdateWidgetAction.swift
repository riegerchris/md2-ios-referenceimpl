//
//  MD2UpdateWidgetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

/// Action to update a widget on a content provider change.
class MD2UpdateWidgetAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String
    
    /// The view element that needs to be updated.
    let viewElement: MD2WidgetWrapper
    
    /// The content provider that has changed.
    let contentProvider: MD2ContentProvider
    
    /// The attribute of the content provider that has changed.
    let attribute: String
    
    /**
        Default initializer.
    
        - parameter actionSignature: The action identifier.
        - parameter viewElement: The view element that needs to be updated.
        - parameter contentProvider: The content provider that has changed.
        - parameter attribute: The attribute of the content provider that has changed.
    */
    init(actionSignature: String, viewElement: MD2WidgetWrapper, contentProvider: MD2ContentProvider, attribute: String) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
        self.contentProvider = contentProvider
        self.attribute = attribute
    }
    
    /// Execute the action commands: Notify widget of content provider change.
    func execute() {
        if let value = contentProvider.getValue(attribute) {
            print("[UpdateWidgetAction] Update " + actionSignature)
            self.viewElement.setValue(value)
        }
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}