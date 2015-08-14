//
//  WorkflowElement.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WorkflowElement {
    
    let name: String
    
    let defaultProcessChain: ProcessChain

    var actions: Array<ActionType> = []
    
    var onInit: Array<ActionType> = []
    
    var processChains: Array<ProcessChain> = []
    
    var currentProcessChain: ProcessChain?
    
    // MARK invoke not implemented
    
    init(name: String, onInit: ActionType, defaultProcessChain: ProcessChain) {
        self.name = name
        self.onInit.append(onInit)
        self.defaultProcessChain = defaultProcessChain
        self.processChains.append(defaultProcessChain)
    }
    
    func addInitialAction(initialAction: ActionType) {
        onInit.append(initialAction)
    }
    
    func start() {
        println("[WorkflowElement] Start workflow element '\(name)'")
        
        for action in onInit {
            action.execute()
        }
        
        // Start default process chain
        // TODO when are different process chains used?
        if(defaultProcessChain.steps.count > 0) {
            currentProcessChain = defaultProcessChain
        }
        
        currentProcessChain?.start()
    }
    
    func end() {
        println("[WorkflowElement] End workflow element '\(name)'")
        
        currentProcessChain?.end()
    }
}