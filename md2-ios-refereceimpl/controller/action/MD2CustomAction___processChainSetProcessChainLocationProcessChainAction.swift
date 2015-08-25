//
//  MD2CustomAction_LocationDetection___processChainSetProcessChainLocationProcessChainAction.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___processChainSetProcessChainLocationProcessChainAction: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection___processChainSetProcessChainLocationProcessChainAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment2 = MD2CustomAction___processChainExecuteStepAction()
	codeFragment2.execute()
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
