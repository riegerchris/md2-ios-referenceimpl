//
//  MD2WorkflowManager.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 14.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WorkflowManager {
    
    static let instance: MD2WorkflowManager = MD2WorkflowManager()
    
    var currentWorkflow: MD2WorkflowElement?
    
    func goToWorkflow(workflowElement: MD2WorkflowElement) {
        println("[WorkflowManager] Switch workflow into '\(workflowElement.name)'")
        
        if let _ = currentWorkflow {
            currentWorkflow!.end()
        }
        currentWorkflow = workflowElement
        currentWorkflow!.start()
    }
}