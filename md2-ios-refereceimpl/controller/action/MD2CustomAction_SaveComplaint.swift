//
//  MD2CustomAction_SaveComplaint.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2CustomAction_SaveComplaint: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_SaveComplaint"
    
    func execute() {
        let action1 = MD2AssignObjectAction(actionSignature: actionSignature + "__1",
            assignContentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            toContentProvider: MD2ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!,
            attribute: "loc")
        action1.execute()
        
        let action2 = MD2ContentProviderOperationAction(actionSignature: actionSignature + "__2", allowedOperation: MD2ContentProviderOperationAction.AllowedOperation.Save, contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!)
        action2.execute()
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}