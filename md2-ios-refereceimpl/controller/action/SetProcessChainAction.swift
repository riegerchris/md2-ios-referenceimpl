//
//  SetProcessChainAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class SetProcessChainAction: ActionType {
    
    let actionSignature: String
    
    let processChain: String// TODO ProcessChain
    
    init(actionSignature: String, processChain: String) {
        self.actionSignature = actionSignature
        self.processChain = processChain
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}