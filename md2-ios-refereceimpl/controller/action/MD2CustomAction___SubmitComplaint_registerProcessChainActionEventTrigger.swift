//
//  MD2CustomAction___SubmitComplaint_registerProcessChainActionEventTrigger.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___SubmitComplaint_registerProcessChainActionEventTrigger: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___SubmitComplaint_registerProcessChainActionEventTrigger"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
       
    }
    
    /**
        Compare two action objects.
    
        :param: anotherAction The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
