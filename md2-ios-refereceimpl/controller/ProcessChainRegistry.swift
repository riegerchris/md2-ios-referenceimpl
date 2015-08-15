//
//  ProcessChainRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainRegistry {
 
    static let instance: ProcessChainRegistry = ProcessChainRegistry()
    
    var processChains: Dictionary<String, ProcessChain> = [:]
    
    func addProcessChain(processChain: ProcessChain) {
        processChains[processChain.processChainSignature] = processChain
    }
    
    func getProcessChain(processChainSignature: String) -> ProcessChain? {
        return processChains[processChainSignature]
    }
    
}