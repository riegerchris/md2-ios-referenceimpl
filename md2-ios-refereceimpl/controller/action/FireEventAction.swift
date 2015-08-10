//
//  FireEventAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class FireEventAction: ActionType {
    
    let actionSignature: MD2String
    
    let event: MD2String // TODO WorkflowEvent
    
    init(actionSignature: MD2String, event: MD2String) {
        self.actionSignature = actionSignature
        self.event = event
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}