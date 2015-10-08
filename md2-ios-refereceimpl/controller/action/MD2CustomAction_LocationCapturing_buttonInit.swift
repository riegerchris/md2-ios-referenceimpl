//
//  MD2CustomAction_LocationCapturing_buttonInit.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction_LocationCapturing_buttonInit: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction_LocationCapturing_buttonInit"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	let codeFragment1_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_LocationCapturing_buttonInit_1_1_1", 
		event: MD2WorkflowEvent.DoneEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment1_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Next2)!)
		
	let codeFragment2_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_LocationCapturing_buttonInit_2_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment2_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel)!)
		
	let codeFragment3_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_LocationCapturing_buttonInit_3_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment3_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel2)!)
		
	let codeFragment4_1_1 = MD2CustomAction_LocationCapturing_GoOn()
	MD2OnClickHandler.instance.registerAction(codeFragment4_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Next)!)
		
	let codeFragment5_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_LocationCapturing_buttonInit_5_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment5_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel2)!)
       
    }
    
    /**
        Compare two action objects.
    
        - parameter anotherAction: The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
