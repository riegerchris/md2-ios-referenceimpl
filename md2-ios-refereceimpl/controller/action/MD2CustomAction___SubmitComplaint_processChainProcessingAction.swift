//
//  MD2CustomAction___SubmitComplaint_processChainProcessingAction.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___SubmitComplaint_processChainProcessingAction: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction___SubmitComplaint_processChainProcessingAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("ComplaintProcessChain__SubmitComplaint")) {
	}
	else {
	}
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
