//
//  WorkflowManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 14.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WorkflowManager {
    
    static let instance: WorkflowManager = WorkflowManager()
    
    var currentWorkflow: WorkflowElement?
    
    func goToWorkflow(workflowElement: WorkflowElement) {
        println("[WorkflowManager] Switch workflow into '\(workflowElement.name)'")
        
        if let _ = currentWorkflow {
            currentWorkflow!.end()
        }
        currentWorkflow = workflowElement
        currentWorkflow!.start()
    }
}