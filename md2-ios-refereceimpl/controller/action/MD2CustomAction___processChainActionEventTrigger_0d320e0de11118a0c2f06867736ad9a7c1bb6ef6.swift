//
//  MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	MD2ContentProviderRegistry.instance.getContentProvider("__processChainControllerStateProvider")!.setValue(
		"lastEventFired",
		value: MD2String("__gui.LocationDetectionView.Navbar.Next.onClick")
	)
			
	
	let codeFragment2 = MD2CustomAction___LocationCapturing_processChainProcessingAction()
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
