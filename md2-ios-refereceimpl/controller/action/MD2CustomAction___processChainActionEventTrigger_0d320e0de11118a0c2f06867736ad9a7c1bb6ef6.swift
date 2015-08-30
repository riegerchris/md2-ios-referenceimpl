//
//  MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6.swift
//
//  Generated code by class 'IOSCustomAction' on 27.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
		"lastEventFired",
		value: MD2String("__gui.LocationDetectionView.Navbar.Next.onClick")
	)
			
	
	let codeFragment2 = MD2CustomAction___processChainProcessingAction()
	codeFragment2.execute()
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
