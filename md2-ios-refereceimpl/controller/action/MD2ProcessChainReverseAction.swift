//
//  MD2ProcessChainReverseAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ProcessChainReverseAction: MD2ActionType {
    
    let actionSignature: String
    
    let processChain: MD2ProcessChain
    
    init(actionSignature: String, processChain: MD2ProcessChain) {
        self.actionSignature = actionSignature
        self.processChain = processChain
    }
    
    func execute() {
        processChain.reverse()
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}