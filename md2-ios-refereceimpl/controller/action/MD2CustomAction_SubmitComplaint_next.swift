//
//  MD2CustomAction_SubmitComplaint_next.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_SubmitComplaint_next: MD2Action {
    
    let actionSignature: String = "MD2CustomAction_SubmitComplaint_next"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2CustomAction_SubmitComplaint_saveComplaint()
	codeFragment1.execute()
	
	let codeFragment2 = MD2ContentProviderOperationAction(actionSignature: "MD2CustomAction_SubmitComplaint_next_2", 
		allowedOperation: MD2ContentProviderOperationAction.AllowedOperation.Save,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider(
		"ComplaintProvider"
		)!)
	codeFragment2.execute()
	
	let codeFragment3 = MD2FireEventAction(actionSignature: "MD2CustomAction_SubmitComplaint_next_3", 
		event: MD2WorkflowEvent.SubmitEvent)
	codeFragment3.execute()
	
	let codeFragment4 = MD2DisplayMessageAction(actionSignature: "MD2CustomAction_SubmitComplaint_next_4", 
		message: "Complaint submitted!")
	codeFragment4.execute()
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
