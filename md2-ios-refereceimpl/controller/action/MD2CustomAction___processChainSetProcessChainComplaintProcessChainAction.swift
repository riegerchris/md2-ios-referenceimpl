//
//  MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
		"currentProcessChainStep",
		value: MD2String("ComplaintProcessChain__SubmitComplaint")
	)
			
	
	let codeFragment2 = MD2CustomAction___SubmitComplaint_processChainExecuteStepAction()
	codeFragment2.execute()
       
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
