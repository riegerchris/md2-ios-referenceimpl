//
//  MD2ContentProviderOperationAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ContentProviderOperationAction: MD2ActionType {
    
    let actionSignature: String
    
    let allowedOperation: AllowedOperation
    
    let contentProvider: MD2ContentProviderType
    
    init(actionSignature: String, allowedOperation: AllowedOperation, contentProvider: MD2ContentProviderType) {
        
        self.actionSignature = actionSignature
        self.allowedOperation = allowedOperation
        self.contentProvider = contentProvider
    }
    
    func execute() {
        switch allowedOperation {
        case AllowedOperation.Load: contentProvider.load()
        case AllowedOperation.Save: contentProvider.save()
        case AllowedOperation.Remove: contentProvider.remove()
        default: return
        }
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
    enum AllowedOperation {
        case Save, Load, Remove
    }
    
}