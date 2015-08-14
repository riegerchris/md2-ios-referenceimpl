//
//  ProcessChain.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChain {

    let processChainSignature: String
    
    var steps: Array<ProcessChainStep> = []
    
    init(processChainSignature: String) {
        self.processChainSignature = processChainSignature
    }
    
    func addProcessChainStep(stepSignature: String, viewName: String) -> ProcessChainStep {
        let step = ProcessChainStep(stepSignature: stepSignature, processChain: self, viewName: viewName)
        steps.append(step)
        return step
    }
}