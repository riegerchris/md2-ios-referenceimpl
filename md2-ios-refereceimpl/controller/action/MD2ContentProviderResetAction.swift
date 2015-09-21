//
//  MD2ContentProviderResetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ContentProviderResetAction: MD2Action {
    
    let actionSignature: String
    
    let contentProvider: MD2ContentProvider
    
    init(actionSignature: String, contentProvider: MD2ContentProvider) {
        
        self.actionSignature = actionSignature
        self.contentProvider = contentProvider
    }
    
    func execute() {
        self.contentProvider.reset()
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}