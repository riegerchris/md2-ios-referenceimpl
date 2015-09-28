//
//  MD2CustomAction_LocationCapturing_GoOn.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_LocationCapturing_GoOn: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction_LocationCapturing_GoOn"
    
    /// Execute action commands.
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2DisplayMessageAction(actionSignature: "MD2CustomAction_LocationCapturing_GoOn_1", 
		message: "Why the hell have you visited  \(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue)!.value.toString()) ???")
	codeFragment1.execute()
       
    }
    
    /**
        Compare two action objects.
    
        :param: anotherAction The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
