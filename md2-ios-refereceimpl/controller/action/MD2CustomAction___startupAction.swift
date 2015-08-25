//
//  MD2CustomAction_LocationDetection___startupAction.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_LocationDetection___startupAction: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection___startupAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2CustomAction___registerProcessChainActionEventTrigger()
	codeFragment1.execute()
	
	let codeFragment2 = MD2CustomAction___processChainSetProcessChainLocationProcessChainAction()
	codeFragment2.execute()
	
	let codeFragment3 = MD2CustomAction_Init()
	codeFragment3.execute()
	
	let codeFragment4 = MD2CustomAction_ButtonInit()
	codeFragment4.execute()
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
