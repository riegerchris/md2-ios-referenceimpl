//
//  MD2CustomAction_ButtonInit.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2CustomAction_ButtonInit: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_ButtonInit"
    
    func execute() {
        let action3 = MD2CustomAction_GoOn()
        MD2OnClickHandler.instance.registerAction(action3, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_Next)!)
        
        let action4 = MD2FireEventAction(actionSignature: actionSignature + "__4", event: MD2WorkflowEvent.LocationDetection_DoneEvent)
        MD2OnClickHandler.instance.registerAction(action4, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_Next2)!)
        
        let action5 = MD2FireEventAction(actionSignature: actionSignature + "__5", event: MD2WorkflowEvent.LocationDetection_CancelWorkflowEvent)
        MD2OnClickHandler.instance.registerAction(action5, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_Cancel)!)
        
        let action6 = MD2FireEventAction(actionSignature: actionSignature + "__6", event: MD2WorkflowEvent.LocationDetection_CancelWorkflowEvent)
        MD2OnClickHandler.instance.registerAction(action6, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_Cancel2)!)
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}