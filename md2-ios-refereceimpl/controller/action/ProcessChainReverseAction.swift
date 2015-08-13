//
//  ProcessChainReverseAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainReverseAction: ActionType {
    
    let actionSignature: String
    
    init(actionSignature: String) {
        self.actionSignature = actionSignature
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}