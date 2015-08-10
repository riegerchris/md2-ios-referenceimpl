//
//  ProcessChainReverseAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainReverseAction: ActionType {
    
    let actionSignature: MD2String
    
    init(actionSignature: MD2String) {
        self.actionSignature = actionSignature
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}