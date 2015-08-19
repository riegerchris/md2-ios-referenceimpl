//
//  MD2ContentProviderResetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ContentProviderResetAction: MD2ActionType {
    
    let actionSignature: String
    
    let contentProvider: MD2ContentProviderType
    
    init(actionSignature: String, contentProvider: MD2ContentProviderType) {
        
        self.actionSignature = actionSignature
        self.contentProvider = contentProvider
    }
    
    func execute() {
        self.contentProvider.reset()
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}