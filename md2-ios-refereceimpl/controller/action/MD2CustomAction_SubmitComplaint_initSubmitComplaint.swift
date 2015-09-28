//
//  MD2CustomAction_SubmitComplaint_initSubmitComplaint.swift
//
//  Generated code by class 'IOSCustomAction' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CustomAction_SubmitComplaint_initSubmitComplaint: MD2Action {
    
    /// Unique action identifier.
    let actionSignature: String = "MD2CustomAction_SubmitComplaint_initSubmitComplaint"
    
    /// Execute action commands.
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
    
    /**
        Compare two action objects.
    
        :param: anotherAction The action to compare with.
    */
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}
