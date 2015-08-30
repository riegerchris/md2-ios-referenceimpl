//
//  MD2CustomAction_Init.swift
//
//  Generated code by class 'IOSCustomAction' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_Init: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_Init"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetValue_streetValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreet")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreetNo")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainercityValue_cityValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCity")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainercountryValue_countryValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCountry")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainerzipValue_zipValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myPostalCode")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLatitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLongitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_AddressView_streetValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreet")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_AddressView_streetNoValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreetNo")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_AddressView_cityValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCity")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_AddressView_zipValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myPostalCode")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_AddressView_countryValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCountry")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_LatLoView_latitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLatitude")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationVerifyView_LatLoView_longitudeValue)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myLongitude")
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
