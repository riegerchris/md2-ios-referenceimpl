//
//  CustomAction_GoOn.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class CustomAction_GoOn: ActionType {
    
    let actionSignature: String = "CustomAction_GoOn"
    
    func execute() {
        // Bindings Event -> Action
        // -
        
        // Mappings GUIElement -> ContentProvider
        // -
        
        // Calls
        let action1 = DisplayMessageAction(actionSignature: actionSignature + "__1", message: "Why the hell have you visited " + WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_CityValue)!.value.toString() + "???")
        
        // Set
        // -
        
        // If
        // -
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}