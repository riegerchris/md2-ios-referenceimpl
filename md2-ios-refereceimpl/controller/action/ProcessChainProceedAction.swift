//
//  ProcessChainProceedAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainProceedAction: ActionType {
    
    let actionSignature: String

    let processChain: ProcessChain
    
    init(actionSignature: String, processChain: ProcessChain) {
        self.actionSignature = actionSignature
        self.processChain = processChain
    }
    
    func execute() {
        processChain.proceed()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}