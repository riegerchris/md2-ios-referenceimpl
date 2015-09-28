//
//  MD2CustomAction___SubmitComplaint_processChainProcessingAction.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction___SubmitComplaint_processChainProcessingAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___SubmitComplaint_processChainProcessingAction"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("ComplaintProcessChain__SubmitComplaint")) {
	}
	else {
	}
       
    }
    
    /**
        Compare two action objects.
    
        :param: anotherAction The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
