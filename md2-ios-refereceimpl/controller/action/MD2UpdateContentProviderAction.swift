//
//  MD2UpdateContentProviderAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2UpdateContentProviderAction: MD2Action {
    
    let actionSignature: String
    
    let viewElement: MD2WidgetWrapper
    
    let contentProvider: MD2ContentProvider
    
    let attribute: String
    
    init(actionSignature: String, viewElement: MD2WidgetWrapper, contentProvider: MD2ContentProvider, attribute: String) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
        self.contentProvider = contentProvider
        self.attribute = attribute
    }
    
    func execute() {
        if let value = viewElement.getValue() {
            println("[UpdateContentProviderAction] Update " + actionSignature)
            self.contentProvider.setValue(attribute, value: value)
        }
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}