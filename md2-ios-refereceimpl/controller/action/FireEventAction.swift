//
//  FireEventAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class FireEventAction: ActionType {
    
    let actionSignature: String
    
    let event: String // TODO WorkflowEvent
    
    init(actionSignature: String, event: String) {
        self.actionSignature = actionSignature
        self.event = event
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}