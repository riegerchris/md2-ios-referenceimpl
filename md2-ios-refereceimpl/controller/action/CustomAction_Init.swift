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
        // Bindings Event -> Action
        // -
        
        // Mappings GUIElement -> ContentProvider
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_StreetValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_StreetNoValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreetNo")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_CityValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCity")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_CountryValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCountry")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_ZipValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myPostalCode")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_LatitudeValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "latitude")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationDetectionView_LongitudeValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "longitude")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_StreetValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_StreetNoValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreetNo")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_CityValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCity")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_CountryValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCountry")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_ZipValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myPostalCode")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_LatitudeValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "latitude")
        
        DataMapper.instance.map(
            WidgetRegistry.instance.getWidget(WidgetMapping.LocationVerifyView_LongitudeValue)!,
            contentProvider: ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "longitude")
        
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