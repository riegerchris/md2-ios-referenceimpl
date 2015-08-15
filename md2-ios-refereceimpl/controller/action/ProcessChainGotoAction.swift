//
//  ProcessChainGotoAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainGotoAction: ActionType {
    
    let actionSignature: String
    
    let processChain: ProcessChain
    
    let goTo: ProcessChainStep
    
    init(actionSignature: String, processChain: ProcessChain, goTo: ProcessChainStep) {
        self.actionSignature = actionSignature
        self.processChain = processChain
        self.goTo = goTo
    }
    
    func execute() {
        processChain.goTo(self.goTo)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}