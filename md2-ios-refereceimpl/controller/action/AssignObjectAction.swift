//
//  AssignObjectAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class AssignObjectAction: ActionType {
    
    let actionSignature: String
    
    let assignContentProvider: ContentProviderType
    
    let toContentProvider: ContentProviderType
    
    let attribute: String
    
    init(actionSignature: String, assignContentProvider: ContentProviderType, toContentProvider: ContentProviderType, attribute: String) {
        
        self.actionSignature = actionSignature
        self.assignContentProvider = assignContentProvider
        self.toContentProvider = toContentProvider
        self.attribute = attribute
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}