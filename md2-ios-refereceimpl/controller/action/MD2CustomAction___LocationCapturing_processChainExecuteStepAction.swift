//
//  MD2CustomAction___LocationCapturing_processChainExecuteStepAction.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___LocationCapturing_processChainExecuteStepAction: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___LocationCapturing_processChainExecuteStepAction"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("LocationProcessChain__LocationDetection")) {
		
		let codeFragment1_if_0 = MD2GotoViewAction(actionSignature: "MD2CustomAction___LocationCapturing_processChainExecuteStepAction_1_if_0", 
			targetView: MD2WidgetMapping.LocationDetectionView)
		codeFragment1_if_0.execute()
	}
	else if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("LocationProcessChain__LocationVerify")) {
		
		let codeFragment1_elseif_0_0 = MD2GotoViewAction(actionSignature: "MD2CustomAction___LocationCapturing_processChainExecuteStepAction_1_elseif_0_0", 
			targetView: MD2WidgetMapping.LocationVerifyView)
		codeFragment1_elseif_0_0.execute()
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
