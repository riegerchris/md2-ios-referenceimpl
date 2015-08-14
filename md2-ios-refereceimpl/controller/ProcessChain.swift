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
    
    var currentStep: Int = 0
    
    init(processChainSignature: String) {
        self.processChainSignature = processChainSignature
    }
    
    func addProcessChainStep(stepSignature: String, viewName: String) -> ProcessChainStep {
        let step = ProcessChainStep(stepSignature: stepSignature, processChain: self, viewName: viewName)
        steps.append(step)
        return step
    }
    
    func start() {
        if steps.count > 0 {
            currentStep = 0
            steps[currentStep].execute()
        }
    }
    
    func proceed() {
        println("[ProcessChain] Proceed in '\(processChainSignature)'")
        
        if currentStep < steps.count - 1 {
            steps[currentStep].leave()
            currentStep++
            steps[currentStep].execute()
        }
    }
    
    func reverse() {
        println("[ProcessChain] Reverse in '\(processChainSignature)'")
        
        if currentStep > 0 {
            steps[currentStep].leave()
            currentStep--
            steps[currentStep].execute()
        }
    }
    
    func goTo(step: ProcessChainStep) {
        println("[ProcessChain] Go to '\(step.stepSignature)' in '\(processChainSignature)'")
        
        for i in 0..<steps.count {
            if steps[i].stepSignature == step.stepSignature {
                steps[currentStep].leave()
                currentStep = i
                steps[i].execute()
                break
            }
        }
    }
    
    func end() {
        println("[ProcessChain] End '\(processChainSignature)'")
        
        steps[currentStep].leave()
    }
}