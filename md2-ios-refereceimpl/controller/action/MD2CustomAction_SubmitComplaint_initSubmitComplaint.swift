//
//  MD2CustomAction_SubmitComplaint_initSubmitComplaint.swift
//
//  Generated code by class 'IOSCustomAction' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CustomAction_SubmitComplaint_initSubmitComplaint: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_SubmitComplaint_initSubmitComplaint"
    
    func execute() {
        // Bindings/ Mappings / Call action / Set content provider / Conditions
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetValue2)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreet")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.StreetNoValue2)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myStreetNo")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CityValue2)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCity")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.CountryValue2)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myCountry")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.ZipValue2)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("AddressProvider")!,
		attribute: "myPostalCode")
	
	MD2DataMapper.instance.map(
		MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.DescriptionTxt)!,
		contentProvider: MD2ContentProviderRegistry.instance.getContentProvider("ComplaintProvider")!,
		attribute: "descriptions")
		
	let codeFragment7_1_1 = MD2CustomAction_SubmitComplaint_next()
	MD2OnClickHandler.instance.registerAction(codeFragment7_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.SubmitComplaint)!)
		
	let codeFragment8_1_1 = MD2FireEventAction(actionSignature: "MD2CustomAction_SubmitComplaint_initSubmitComplaint_8_1_1", 
		event: MD2WorkflowEvent.CancelComplaintWorkflowEvent)
	MD2OnClickHandler.instance.registerAction(codeFragment8_1_1, widget: MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.Cancel3)!)
       
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
