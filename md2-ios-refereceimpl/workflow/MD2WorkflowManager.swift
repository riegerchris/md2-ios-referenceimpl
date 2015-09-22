//
//  MD2WorkflowManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 14.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

/// The object managing the workflow process.
class MD2WorkflowManager {
    
    /// The singleton instance
    static let instance: MD2WorkflowManager = MD2WorkflowManager()
    
    /// The current workflow element
    var currentWorkflowElement: MD2WorkflowElement?
    
    /// Singleton initializer
    private init() {
        // Private initializer for singleton object
    }
    
    /**
    Switch to another workflow element. The currently running workflow element (if existing) is properly ended beforehand.
    
    :param workflowElement The workflow element to start.
    */
    func goToWorkflow(workflowElement: MD2WorkflowElement) {
        println("[WorkflowManager] Switch workflow into '\(workflowElement.name)'")
        
        if let _ = currentWorkflowElement {
            currentWorkflowElement!.end()
        }
        currentWorkflowElement = workflowElement
        currentWorkflowElement!.start()
    }
    
    /**
    End the workflow element. To continue the app flow, the start view is invoked for a new workflow selection.
    
    :param workflowElement The workflow element to end.
    */
    func endWorkflow(workflowElement: MD2WorkflowElement) {
        println("[WorkflowManager] End workflow '\(workflowElement.name)'")

        workflowElement.end()
        currentWorkflowElement = nil
        
        // Go back to startup screen
        MD2ViewManager.instance.goToStartView()
    }
    
}
