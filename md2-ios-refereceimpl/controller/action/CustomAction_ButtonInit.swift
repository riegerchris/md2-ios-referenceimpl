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
        /* In Process Chain now
        let action1 = GotoViewAction(actionSignature: actionSignature + "__1", targetView: WidgetMapping.LocationVerifyView)
        OnClickHandler.instance.registerAction(action1, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_Next)!)
        
        let action2 = GotoViewAction(actionSignature: actionSignature + "__2", targetView: WidgetMapping.LocationDetectionView)
        OnClickHandler.instance.registerAction(action2, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_Previous)!)
        */
        let action3 = CustomAction_GoOn()
        OnClickHandler.instance.registerAction(action3, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_Next)!)
        
        let action4 = FireEventAction(actionSignature: actionSignature + "__4", event: WorkflowEvent.LocationDetection_DoneEvent)
        OnClickHandler.instance.registerAction(action4, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_Next2)!)
        
        let action5 = FireEventAction(actionSignature: actionSignature + "__5", event: WorkflowEvent.LocationDetection_CancelWorkflowEvent)
        OnClickHandler.instance.registerAction(action5, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_Cancel)!)
        
        let action6 = FireEventAction(actionSignature: actionSignature + "__6", event: WorkflowEvent.LocationDetection_CancelWorkflowEvent)
        OnClickHandler.instance.registerAction(action6, widget: WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_Cancel2)!)
        
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