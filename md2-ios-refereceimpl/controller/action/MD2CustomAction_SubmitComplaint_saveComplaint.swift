//
//  MD2CustomAction_SubmitComplaint_saveComplaint.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_SubmitComplaint_saveComplaint: MD2Action {
    
    let actionSignature: String = "MD2CustomAction_SubmitComplaint_saveComplaint"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2ContentProviderOperationAction(actionSignature: "MD2CustomAction_SubmitComplaint_saveComplaint_1", 
		allowedOperation: MD2ContentProviderOperationAction.AllowedOperation.Save,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider(
		"ComplaintProvider"
		)!)
	codeFragment1.execute()
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
