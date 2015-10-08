//
//  MD2WorkflowEventHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

/// The workflow event handler to hook the workflow layer into the MD2 event system.
class MD2WorkflowEventHandler: MD2EventHandler {
    
    /// Convenience typealias for the tuple of workflow event, action and element.
    typealias WorkflowEventEntry = (MD2WorkflowEvent, MD2WorkflowAction, MD2WorkflowElement)
    
    /// The singleton instance.
    static let instance: MD2WorkflowEventHandler = MD2WorkflowEventHandler()
    
    /// The list of registered workflow event-action-element tuples.
    var workflowElements: Array<WorkflowEventEntry> = []
    
    /// Singleton initializer.
    private init() {
        // Nothing to initialize
    }
    
    /**
        Register workflow elements for a specific event and action.
    
        - parameter workflowEvent: The workflow event to react to.
        - parameter action: The type of action (start/end) to perform.
        - parameter workflowElement: The workflow element to start or end.
    */
    func registerWorkflowElement(workflowEvent: MD2WorkflowEvent, action: MD2WorkflowAction, workflowElement: MD2WorkflowElement) {
        for (event, action, element) in workflowElements {
            if event == workflowEvent && action == action && element === workflowElement {
                // Already exists
                return
            }
        }
        
        workflowElements.append(workflowEvent, action, workflowElement)
    }
    
    /**
        Unregister workflow elements for a specific event and action.
    
        - parameter workflowEvent: The workflow event to react to.
        - parameter action: The type of action (start/end) to perform.
        - parameter workflowElement: The workflow element to start or end.
    */
    func unregisterWorkflowElement(workflowEvent: MD2WorkflowEvent, action: MD2WorkflowAction, workflowElement: MD2WorkflowElement) {
        for (index, (event, action, element)) in workflowElements.enumerate() {
            if event == workflowEvent && action == action && element === workflowElement {
                workflowElements.removeAtIndex(index)
                break
            }
        }
    }
    
    /**
        Function to trigger the event.
    
        - parameter sender: The workflow event to be fired.
    */
    @objc
    func fire(sender: MD2WorkflowEvent) {
        print("Event fired to WorkflowEventHandler: " + String(sender.description))
        
        for (event, action, workflowElement) in self.workflowElements {
            if event == sender {
                // Determine workflow action
                if action == MD2WorkflowAction.Start {
                    MD2WorkflowManager.instance.goToWorkflow(workflowElement)
                } else if action == MD2WorkflowAction.End {
                    MD2WorkflowManager.instance.endWorkflow(workflowElement)
                }
            }
        }
    }
}
