//
//  MD2CustomAction_LocationDetection___processChainProcessingAction.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___processChainProcessingAction: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection___processChainProcessingAction"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	if MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.equals(MD2String("LocationProcessChain__LocationDetection")) {
		
		if (MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.equals(MD2String("__gui.LocationDetectionView.Navbar.Next.onClick")) || MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.equals(MD2String("__action.proceed"))) {
			
			let codeFragment1_if_0_if_1 = MD2CustomAction___processChainExecuteStepAction()
			codeFragment1_if_0_if_1.execute()
			
			let codeFragment1_if_0_if_2 = MD2CustomAction_SaveComplaint()
			codeFragment1_if_0_if_2.execute()
		}
		else {
		}
	}
	else if MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("currentProcessChainStep")!.equals(MD2String("LocationProcessChain__LocationVerify")) {
		
		if (MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.equals(MD2String("__gui.LocationVerifyView.Buttons.Previous.onClick")) || MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.getValue("lastEventFired")!.equals(MD2String("__action.reverse"))) {
			
			let codeFragment1_elseif_0_0_if_1 = MD2CustomAction___processChainExecuteStepAction()
			codeFragment1_elseif_0_0_if_1.execute()
		}
		else {
		}
	}
	else {
	}
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
