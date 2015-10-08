//
//  MD2CustomAction_SubmitComplaint_saveComplaint.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction_SubmitComplaint_saveComplaint: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction_SubmitComplaint_saveComplaint"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2ContentProviderOperationAction(actionSignature: "MD2CustomAction_SubmitComplaint_saveComplaint_1", 
		allowedOperation: MD2ContentProviderOperationAction.AllowedOperation.Save,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider(
		"ComplaintProvider"
		)!)
	codeFragment1.execute()
       
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
