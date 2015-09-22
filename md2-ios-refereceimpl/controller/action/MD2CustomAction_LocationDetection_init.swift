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
        
        MD2DataMapper.instance.map(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.ZipValue)!, contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!, attribute: "myPostalCode")
        
        MD2DataMapper.instance.map(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.ZipValue1)!, contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!, attribute: "myPostalCode")
        
        MD2DataMapper.instance.map(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue)!, contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!, attribute: "myCity")
        
        MD2DataMapper.instance.map(MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue1)!, contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!, attribute: "myCity")
       
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
