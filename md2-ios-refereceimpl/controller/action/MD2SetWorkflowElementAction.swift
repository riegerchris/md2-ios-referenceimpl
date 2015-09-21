//
//  MD2SetWorkflowElementAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2SetWorkflowElementAction: MD2Action {
    
    let actionSignature: String
    
    let workflowElement: MD2WorkflowElement
    
    init(actionSignature: String, workflowElement: MD2WorkflowElement) {
        self.actionSignature = actionSignature
        self.workflowElement = workflowElement
    }
    
    func execute() {
        MD2WorkflowManager.instance.goToWorkflow(workflowElement)
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}