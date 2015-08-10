//
//  SetProcessChainAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class SetProcessChainAction: ActionType {
    
    let actionSignature: MD2String
    
    let processChain: MD2String// TODO ProcessChain
    
    init(actionSignature: MD2String, processChain: MD2String) {
        self.actionSignature = actionSignature
        self.processChain = processChain
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}