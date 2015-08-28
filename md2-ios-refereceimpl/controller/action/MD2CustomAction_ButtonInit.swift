//
//  MD2CustomAction_ButtonInit.swift
//
//  Generated code by class 'IOSCustomAction' on 27.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_ButtonInit: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_ButtonInit"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	let codeFragment1_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_ButtonInit_1_1_1", 
		event: MD2WorkflowEvent.DoneEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment1_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Next2)!)
		
	let codeFragment2_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_ButtonInit_2_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment2_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel)!)
		
	let codeFragment3_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_ButtonInit_3_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment3_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel2)!)
		
	let codeFragment4_1_1 = MD2CustomAction_GoOn()
	MD2OnClickHandler.instance.registerAction(codeFragment4_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Next)!)
		
	let codeFragment5_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_ButtonInit_5_1_1", 
		event: MD2WorkflowEvent.CancelWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment5_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel2)!)
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
