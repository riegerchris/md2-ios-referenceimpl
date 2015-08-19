//
//  MD2CustomAction_Init.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2CustomAction_Init: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_Init"
    
    func execute() {
        // Mappings GUIElement -> ContentProvider
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_StreetValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_StreetNoValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreetNo")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_CityValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCity")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_CountryValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCountry")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_ZipValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myPostalCode")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_LatitudeValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "latitude")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_LongitudeValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "longitude")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_StreetValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreet")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_StreetNoValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myStreetNo")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_CityValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCity")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_CountryValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myCountry")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_ZipValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "myPostalCode")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_LatitudeValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "latitude")
        
        MD2DataMapper.instance.map(
            MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_LongitudeValue)!,
            contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
            attribute: "longitude")
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}