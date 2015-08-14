//
//  FireEventAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class FireEventAction: ActionType {
    
    let actionSignature: String
    
    let event: WorkflowEvent
    
    init(actionSignature: String, event: WorkflowEvent) {
        self.actionSignature = actionSignature
        self.event = event
    }
    
    func execute() {
        WorkflowEventHandler.instance.fire(event)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}