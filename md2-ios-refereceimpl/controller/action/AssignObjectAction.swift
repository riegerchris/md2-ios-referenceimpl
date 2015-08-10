//
//  AssignObjectAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class AssignObjectAction: ActionType {
    
    let actionSignature: MD2String
    
    let assignContentProvider: ContentProviderType
    
    let toContentProvider: ContentProviderType
    
    let attribute: MD2String
    
    init(actionSignature: MD2String, assignContentProvider: ContentProviderType, toContentProvider: ContentProviderType, attribute: MD2String) {
        
        self.actionSignature = actionSignature
        self.assignContentProvider = assignContentProvider
        self.toContentProvider = toContentProvider
        self.attribute = attribute
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}