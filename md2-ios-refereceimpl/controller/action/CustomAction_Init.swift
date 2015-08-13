//
//  CustomAction_Init.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class CustomAction_Init: ActionType {
    
    let actionSignature: String = "CustomAction_Init"
    
    func execute() {
        // Bindings
        // -
        
        // Mappings GUIElement -> ContentProvider
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_StreetValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_StreetValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
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