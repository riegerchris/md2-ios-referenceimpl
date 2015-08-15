//
//  SetWorkflowElementAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class SetWorkflowElementAction: ActionType {
    
    let actionSignature: String
    
    let workflowElement: WorkflowElement
    
    init(actionSignature: String, workflowElement: WorkflowElement) {
        self.actionSignature = actionSignature
        self.workflowElement = workflowElement
    }
    
    func execute() {
        WorkflowManager.instance.goToWorkflow(workflowElement)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}