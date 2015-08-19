//
//  MD2ProcessChainGotoAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ProcessChainGotoAction: MD2ActionType {
    
    let actionSignature: String
    
    let processChain: MD2ProcessChain
    
    let goTo: MD2ProcessChainStep
    
    init(actionSignature: String, processChain: MD2ProcessChain, goTo: MD2ProcessChainStep) {
        self.actionSignature = actionSignature
        self.processChain = processChain
        self.goTo = goTo
    }
    
    func execute() {
        processChain.goTo(self.goTo)
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}