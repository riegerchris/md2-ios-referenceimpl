//
//  MD2CustomAction_LocationDetection_init.swift
//
//  Generated code by class 'IOSCustomAction' on 22.09.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_LocationDetection_init: MD2Action {
    
    let actionSignature: String = "MD2CustomAction_LocationDetection_init"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreet")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetNoValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreetNo")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCity")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CountryValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCountry")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.ZipValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myPostalCode")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LatitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLatitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LongitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLongitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreet")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetNoValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreetNo")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCity")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.ZipValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myPostalCode")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CountryValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCountry")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LatitudeValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLatitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LongitudeValue1)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLongitude")
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
