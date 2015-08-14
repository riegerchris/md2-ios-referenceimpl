//
//  CustomAction_SaveComplaint.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class CustomAction_SaveComplaint: ActionType {
    
    let actionSignature: String = "CustomAction_SaveComplaint"
    
    func execute() {
        // Bindings Event -> Action
        // -
        
        // Mappings GUIElement -> ContentProvider
        // -
        
        // Call action / Set content provider / Conditions
        let action1 = AssignObjectAction(actionSignature: actionSignature + "__1",
            assignContentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            toContentProvider: ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!,
            attribute: "loc")
        action1.execute()
        
        let action2 = ContentProviderOperationAction(actionSignature: actionSignature + "__2", allowedOperation: ContentProviderOperationAction.AllowedOperation.Save, contentProvider: ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!)
        action2.execute()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}