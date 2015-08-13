//
//  ProcessChainGotoAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainGotoAction: ActionType {
    
    let actionSignature: String
    
    let targetStep: String
    
    init(actionSignature: String, targetStep: String) {
        self.actionSignature = actionSignature
        self.targetStep = targetStep
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}