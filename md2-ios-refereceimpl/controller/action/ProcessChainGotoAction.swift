//
//  ProcessChainGotoAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainGotoAction: ActionType {
    
    let actionSignature: MD2String
    
    let targetStep: MD2String
    
    init(actionSignature: MD2String, targetStep: MD2String) {
        self.actionSignature = actionSignature
        self.targetStep = targetStep
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}