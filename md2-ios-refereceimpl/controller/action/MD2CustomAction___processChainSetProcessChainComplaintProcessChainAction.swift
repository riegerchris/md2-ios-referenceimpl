//
//  MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction: MD2Action {
    
    let actionSignature: String = "MD2CustomAction___processChainSetProcessChainComplaintProcessChainAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
		"currentProcessChainStep",
		value: MD2String("ComplaintProcessChain__SubmitComplaint")
	)
			
	
	let codeFragment2 = MD2CustomAction___SubmitComplaint_processChainExecuteStepAction()
	codeFragment2.execute()
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
