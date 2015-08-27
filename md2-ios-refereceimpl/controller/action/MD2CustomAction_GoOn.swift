//
//  MD2CustomAction_GoOn.swift
//
//  Generated code by class 'IOSCustomAction' on 27.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_GoOn: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_GoOn"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	let codeFragment1 = MD2DisplayMessageAction(actionSignature: "MD2CustomAction_GoOn_1", 
		message: "Why the hell have you visited  \(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainercityValue_cityValue)!.value.toString()) ???")
	codeFragment1.execute()
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
