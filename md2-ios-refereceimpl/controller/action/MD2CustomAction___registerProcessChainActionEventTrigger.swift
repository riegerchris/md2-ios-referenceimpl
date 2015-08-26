//
//  MD2CustomAction___registerProcessChainActionEventTrigger.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction___registerProcessChainActionEventTrigger: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction___registerProcessChainActionEventTrigger"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
		
	let codeFragment1_1_1 = MD2CustomAction___processChainActionEventTrigger_e88c73ce2748b8aeb8b5d149045638d5eebb94d1()
	MD2OnClickHandler.instance.registerAction(codeFragment1_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_Buttons_Previous)!)
		
	let codeFragment2_1_1 = MD2CustomAction___processChainActionEventTrigger_0d320e0de11118a0c2f06867736ad9a7c1bb6ef6()
	MD2OnClickHandler.instance.registerAction(codeFragment2_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_Navbar_Next)!)
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
