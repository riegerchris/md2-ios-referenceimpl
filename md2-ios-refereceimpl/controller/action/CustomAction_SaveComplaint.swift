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
        // TODO set
        //ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!.
        
        let action1 = ContentProviderOperationAction(actionSignature: actionSignature + "__1", allowedOperation: ContentProviderOperationAction.AllowedOperation.Save, contentProvider: ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!)
        action1.execute()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}