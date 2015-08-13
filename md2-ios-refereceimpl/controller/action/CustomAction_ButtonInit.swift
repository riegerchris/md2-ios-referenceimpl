//
//  CustomAction_ButtonInit.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class CustomAction_ButtonInit: ActionType {
    
    let actionSignature: String = "CustomAction_ButtonInit"
    
    func execute() {
        // Bindings Event -> Action
        let action1 = GotoViewAction(actionSignature: actionSignature + "__1", targetView: WidgetMapping.LocationVerifyView)
        OnTouchHandler.instance.registerAction(action1, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_Next)!)
        
        let action2 = GotoViewAction(actionSignature: actionSignature + "__2", targetView: WidgetMapping.LocationDetectionView)
        OnTouchHandler.instance.registerAction(action2, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_Previous)!)
        
        let action3 = CustomAction_GoOn()
        OnTouchHandler.instance.registerAction(action3, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_Next)!)
        
        // Mappings GUIElement -> ContentProvider
        // -
        
        // Calls
        // -
        
        // Set
        // -
        
        // If
        // -
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}