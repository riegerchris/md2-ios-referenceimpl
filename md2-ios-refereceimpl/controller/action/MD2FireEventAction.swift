//
//  MD2FireEventAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2FireEventAction: MD2ActionType {
    
    let actionSignature: String
    
    let event: MD2WorkflowEvent
    
    init(actionSignature: String, event: MD2WorkflowEvent) {
        self.actionSignature = actionSignature
        self.event = event
    }
    
    func execute() {
        MD2WorkflowEventHandler.instance.fire(event)
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}