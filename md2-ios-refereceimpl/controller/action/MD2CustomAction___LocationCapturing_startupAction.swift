//
//  MD2CustomAction___LocationCapturing_startupAction.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction___LocationCapturing_startupAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___LocationCapturing_startupAction"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2CustomAction___LocationCapturing_registerProcessChainActionEventTrigger()
	codeFragment1.execute()
	
	let codeFragment2 = MD2CustomAction___processChainSetProcessChainLocationProcessChainAction()
	codeFragment2.execute()
	
	let codeFragment3 = MD2CustomAction_LocationCapturing_init()
	codeFragment3.execute()
	
	let codeFragment4 = MD2CustomAction_LocationCapturing_buttonInit()
	codeFragment4.execute()
       
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
