//
//  MD2CustomAction_LocationDetection_SaveComplaint.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015
//

class MD2CustomAction_SaveComplaint: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection_SaveComplaint"
    
    init() {
        // NOting
    }
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
        
        let codeFragment1 = MD2AssignObjectAction(actionSignature: actionSignature + "__1",
            assignContentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            toContentProvider: MD2ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!,
            attribute: "loc")
        codeFragment1.execute()
        
        let codeFragment2 = MD2ContentProviderOperationAction(actionSignature: "MD2CustomAction_LocationDetection_SaveComplaint_2",
            allowedOperation: MD2ContentProviderOperationAction.AllowedOperation.Save,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider(
                "ComplaintProvider"
                )!)
        codeFragment2.execute()
        
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
