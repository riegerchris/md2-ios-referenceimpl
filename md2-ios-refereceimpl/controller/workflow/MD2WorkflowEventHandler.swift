//
//  MD2WorkflowEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WorkflowEventHandler {
    
    static let instance: MD2WorkflowEventHandler = MD2WorkflowEventHandler()
    
    var workflowElements: Dictionary<MD2WorkflowEvent,(MD2WorkflowActionType, MD2WorkflowElement)> = [:]
    
    func registerWorkflowElement(workflowEvent: MD2WorkflowEvent, actionType: MD2WorkflowActionType, workflowElement: MD2WorkflowElement) {
        workflowElements[workflowEvent] = (actionType, workflowElement)
    }
    
    func unregisterWorkflowElement(workflowEvent: MD2WorkflowEvent, actionType: MD2WorkflowActionType, workflowElement: MD2WorkflowElement) {
        for (key, value) in workflowElements {
            if key == workflowEvent {
                workflowElements[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire(sender: MD2WorkflowEvent) {
        //println("Event fired to WorkflowEventHandler: " + String(sender.description)
        
        for (event, (actionType, workflowElement)) in workflowElements {
            if event == sender {
                // Determine workflow action
                if actionType == MD2WorkflowActionType.Start {
                    workflowElement.start()
                } else if actionType == MD2WorkflowActionType.End {
                    workflowElement.end()
                }
            }
        }
    }
    
}