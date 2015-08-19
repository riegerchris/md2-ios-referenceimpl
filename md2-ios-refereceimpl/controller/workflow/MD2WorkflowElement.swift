//
//  MD2WorkflowElement.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WorkflowElement {
    
    let name: String
    
    let defaultProcessChain: MD2ProcessChain

    var actions: Array<MD2ActionType> = []
    
    var onInit: Array<MD2ActionType> = []
    
    var processChains: Array<MD2ProcessChain> = []
    
    var currentProcessChain: MD2ProcessChain?
    
    // MARK invoke not implemented
    
    init(name: String, onInit: MD2ActionType, defaultProcessChain: MD2ProcessChain) {
        self.name = name
        self.onInit.append(onInit)
        self.defaultProcessChain = defaultProcessChain
        self.processChains.append(defaultProcessChain)
    }
    
    func addInitialAction(initialAction: MD2ActionType) {
        onInit.append(initialAction)
    }
    
    func start() {
        println("[WorkflowElement] Start workflow element '\(name)'")
        
        for action in onInit {
            action.execute()
        }
        
        // Start default process chain
        // MARK when are different process chains used?
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