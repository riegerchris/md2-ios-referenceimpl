//
//  WorkflowEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WorkflowEventHandler {
    
    static let instance:WorkflowEventHandler = WorkflowEventHandler()
    
    var workflowElements: Dictionary<WorkflowEvent,(WorkflowActionType, WorkflowElement)> = [:]
    
    func registerWorkflowElement(workflowEvent: WorkflowEvent, actionType: WorkflowActionType, workflowElement: WorkflowElement) {
        workflowElements[workflowEvent] = (actionType, workflowElement)
    }
    
    func unregisterWorkflowElement(workflowEvent: WorkflowEvent, actionType: WorkflowActionType, workflowElement: WorkflowElement) {
        for (key, value) in workflowElements {
            if key == workflowEvent {
                workflowElements[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire(sender: WorkflowEvent) {
        //println("Event fired to WorkflowEventHandler: " + String(sender.description)
        
        for (event, (actionType, workflowElement)) in workflowElements {
            if event == sender {
                // Determine workflow action
                if actionType == WorkflowActionType.Start {
                    workflowElement.start()
                } else if actionType == WorkflowActionType.End {
                    workflowElement.end()
                }
            }
        }
    }
    
}