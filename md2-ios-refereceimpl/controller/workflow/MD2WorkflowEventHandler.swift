//
//  MD2WorkflowEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WorkflowEventHandler {
    
    typealias WorkflowEventEntry = (MD2WorkflowEvent, MD2WorkflowActionType, MD2WorkflowElement)
    
    static let instance: MD2WorkflowEventHandler = MD2WorkflowEventHandler()
    
    var workflowElements: Array<WorkflowEventEntry> = []
    
    private init() {
        // Nothing to initialize
    }
    
    func registerWorkflowElement(workflowEvent: MD2WorkflowEvent, actionType: MD2WorkflowActionType, workflowElement: MD2WorkflowElement) {
        
        for (event, action, element) in workflowElements {
            if event == workflowEvent && action == actionType && element === workflowElement {
                // Already exists
                return
            }
        }
        
        workflowElements.append(workflowEvent, actionType, workflowElement)
    }
    
    func unregisterWorkflowElement(workflowEvent: MD2WorkflowEvent, actionType: MD2WorkflowActionType, workflowElement: MD2WorkflowElement) {
        for (index, (event, action, element)) in enumerate(workflowElements) {
            if event == workflowEvent && action == actionType && element === workflowElement {
                workflowElements.removeAtIndex(index)
                break
            }
        }
    }
    
    @objc
    func fire(sender: MD2WorkflowEvent) {
        println("Event fired to WorkflowEventHandler: " + String(sender.description))
        
        for (event, actionType, workflowElement) in self.workflowElements {
            if event == sender {
                // Determine workflow action
                if actionType == MD2WorkflowActionType.Start {
                    MD2WorkflowManager.instance.goToWorkflow(workflowElement)
                } else if actionType == MD2WorkflowActionType.End {
                    MD2WorkflowManager.instance.endWorkflow(workflowElement)
                }
            }
        }
    }
    
}