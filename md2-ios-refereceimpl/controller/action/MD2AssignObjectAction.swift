//
//  MD2AssignObjectAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2AssignObjectAction: MD2ActionType {
    
    let actionSignature: String
    
    let assignContentProvider: MD2ContentProviderType
    
    let toContentProvider: MD2ContentProviderType
    
    let attribute: String
    
    init(actionSignature: String, assignContentProvider: MD2ContentProviderType, toContentProvider: MD2ContentProviderType, attribute: String) {
        
        self.actionSignature = actionSignature
        self.assignContentProvider = assignContentProvider
        self.toContentProvider = toContentProvider
        self.attribute = attribute
    }
    
    func execute() {
        toContentProvider.registerAttributeContentProvider(attribute, contentProvider: assignContentProvider)
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}