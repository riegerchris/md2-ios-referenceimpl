//
//  ContentProviderResetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ContentProviderResetAction: ActionType {
    
    let actionSignature: MD2String
    
    let contentProvider: ContentProviderType
    
    init(actionSignature: MD2String, contentProvider: ContentProviderType) {
        
        self.actionSignature = actionSignature
        self.contentProvider = contentProvider
    }
    
    func execute() {
        self.contentProvider.reset()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}