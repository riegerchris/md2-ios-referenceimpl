//
//  MD2CustomAction___LocationDetection_processChainProcessingAction.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___LocationDetection_processChainProcessingAction: MD2Action {
    
    let actionSignature: String = "MD2CustomAction___LocationDetection_processChainProcessingAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("LocationProcessChain__LocationDetection")) {
		
		if (MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.toString() + "").equals(MD2String("__gui.LocationDetectionView.Navbar.Next.onClick")) || MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.toString() + "").equals(MD2String("__action.proceed"))) {
				
			MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
				"currentProcessChainStep",
				value: MD2String("LocationProcessChain__LocationVerify")
			)
					
			
			let codeFragment1_if_0_if_1 = MD2CustomAction___LocationDetection_processChainExecuteStepAction()
			codeFragment1_if_0_if_1.execute()
		}
		else {
		}
	}
	else if MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.toString() + "").equals(MD2String("LocationProcessChain__LocationVerify")) {
		
		if (MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.toString() + "").equals(MD2String("__gui.LocationVerifyView.Buttons.Previous.onClick")) || MD2String("" + MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.toString() + "").equals(MD2String("__action.reverse"))) {
				
			MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
				"currentProcessChainStep",
				value: MD2String("LocationProcessChain__LocationDetection")
			)
					
			
			let codeFragment1_elseif_0_0_if_1 = MD2CustomAction___LocationDetection_processChainExecuteStepAction()
			codeFragment1_elseif_0_0_if_1.execute()
		}
		else {
		}
	}
	else {
	}
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
