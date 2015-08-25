//
//  MD2CustomAction_LocationDetection___processChainExecuteStepAction.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___processChainExecuteStepAction: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection___processChainExecuteStepAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.equals(MD2String("LocationProcessChain__LocationDetection")) {
		
		let codeFragment1_if_0 = MD2GotoViewAction(actionSignature: "MD2CustomAction_LocationDetection___processChainExecuteStepAction_1_if_0", 
			targetView: MD2WidgetMapping.LocationDetectionView)
		codeFragment1_if_0.execute()
	}
	else if MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.equals(MD2String("LocationProcessChain__LocationVerify")) {
		
		let codeFragment1_elseif_0_0 = MD2GotoViewAction(actionSignature: "MD2CustomAction_LocationDetection___processChainExecuteStepAction_1_elseif_0_0", 
			targetView: MD2WidgetMapping.LocationVerifyView)
		codeFragment1_elseif_0_0.execute()
	}
	else {
	}
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
