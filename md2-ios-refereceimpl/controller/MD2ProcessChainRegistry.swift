//
//  MD2ProcessChainRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ProcessChainRegistry {
 
    static let instance: MD2ProcessChainRegistry = MD2ProcessChainRegistry()
    
    var processChains: Dictionary<String, MD2ProcessChain> = [:]
    
    func addProcessChain(processChain: MD2ProcessChain) {
        processChains[processChain.processChainSignature] = processChain
    }
    
    func getProcessChain(processChainSignature: String) -> MD2ProcessChain? {
        return processChains[processChainSignature]
    }
    
}