//
//  MD2Controller.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2Controller {
    
    func run(window: UIWindow) {
        // Initialize the widget registry
        var widgetRegistry = MD2WidgetRegistry.instance

        // Initialize all view elements
        // VIEW
        let locationDetectionView = MD2FlowLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView)
        locationDetectionView.orientation = MD2FlowLayoutPane.Orientation.Vertical

        let locationDetectionView_titleLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_TitleLbl)
        locationDetectionView_titleLbl.value = MD2String("Enter your location")
        locationDetectionView_titleLbl.textStyle = MD2WidgetTextStyle.BoldItalic
        locationDetectionView_titleLbl.fontSize = MD2Float(2.5)
        locationDetectionView_titleLbl.color = MD2String("#000000")
        locationDetectionView.addWidget(locationDetectionView_titleLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_titleLbl))
        
        let locationDetectionView_addressData = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData)
        locationDetectionView_addressData.columns = MD2Integer(2)
        locationDetectionView.addWidget(locationDetectionView_addressData)
        
        let locationDetectionView_streetValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_StreetValueLabel)
        locationDetectionView_streetValueLabel.value = MD2String("Street:")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_streetValueLabel))
        
        let locationDetectionView_streetValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_StreetValue)
        locationDetectionView_streetValue.tooltip = MD2String("Please insert the name of your street.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_streetValue))
        
        let locationDetectionView_streetNoValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_StreetNoValueLabel)
        locationDetectionView_streetNoValueLabel.value = MD2String("Street number:")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_streetNoValueLabel))
        
        let locationDetectionView_streetNoValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_StreetNoValue)
        locationDetectionView_streetNoValue.tooltip = MD2String("Please insert your street number.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_streetNoValue))
        
        let locationDetectionView_zipValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_ZipValueLabel)
        locationDetectionView_zipValueLabel.value = MD2String("Zip code:")
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_zipValueLabel))
        
        let locationDetectionView_zipValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_ZipValue)
        locationDetectionView_zipValue.tooltip = MD2String("Please insert the zip code of your location.")
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_zipValue))
        
        let locationDetectionView_cityValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_CityValueLabel)
        locationDetectionView_cityValueLabel.value = MD2String("City:")
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_cityValueLabel))
        
        let locationDetectionView_cityValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_CityValue)
        locationDetectionView_cityValue.tooltip = MD2String("Please insert your city.")
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_cityValue))
        
        let locationDetectionView_countryValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_CountryValueLabel)
        locationDetectionView_countryValueLabel.value = MD2String("Country:")
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_countryValueLabel))
        
        let locationDetectionView_countryValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_CountryValue)
        locationDetectionView_countryValue.tooltip = MD2String("Please insert your country.")
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_countryValue))
        
        let locationDetectionView_spacer2 = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Spacer2)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer2)
        
        let locationDetectionView_spacer3 = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Spacer3)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer3)
        
        // Number input; places 6
        let locationDetectionView_latitudeValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_LatitudeValueLabel)
        locationDetectionView_latitudeValueLabel.value = MD2String("Latitude:")
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_latitudeValueLabel))
        
        let locationDetectionView_latitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_LatitudeValue)
        locationDetectionView_latitudeValue.tooltip = MD2String("Please insert your coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_latitudeValue))
        
        let locationDetectionView_longitudeValueLabel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_LongitudeValueLabel)
        locationDetectionView_longitudeValueLabel.value = MD2String("Longitude:")
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValueLabel)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_longitudeValueLabel))
        
        let locationDetectionView_longitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_LongitudeValue)
        locationDetectionView_longitudeValue.tooltip = MD2String("Please insert your longitude coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_longitudeValue))
        
        let locationDetectionView_spacer4 = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Spacer4)
        locationDetectionView.addWidget(locationDetectionView_spacer4)
        
        let locationDetectionView_navbar = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar)
        locationDetectionView_navbar.columns = MD2Integer(3)
        locationDetectionView.addWidget(locationDetectionView_navbar)
        
        let locationDetectionView_previousDummy = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationDetectionView_PreviousDummy)
        locationDetectionView_previousDummy.value = MD2String("Previous")
        locationDetectionView_previousDummy.textStyle = MD2WidgetTextStyle.Bold
        locationDetectionView_previousDummy.fontSize = MD2Float(1.2)
        locationDetectionView_previousDummy.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_previousDummy)
        let locationDetectionView_wrapper_previousDummy = MD2WidgetWrapper(widget: locationDetectionView_previousDummy)
        locationDetectionView_wrapper_previousDummy.isElementDisabled = false
        widgetRegistry.add(locationDetectionView_wrapper_previousDummy)

        let locationDetectionView_cancel = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Cancel)
        locationDetectionView_cancel.value = MD2String("Cancel")
        locationDetectionView_cancel.textStyle = MD2WidgetTextStyle.Bold
        locationDetectionView_cancel.fontSize = MD2Float(1.2)
        locationDetectionView_cancel.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_cancel)
        let locationDetectionView_wrapper_cancel = MD2WidgetWrapper(widget: locationDetectionView_cancel)
        locationDetectionView_wrapper_cancel.setDisabled(false)
        widgetRegistry.add(locationDetectionView_wrapper_cancel)
        
        let locationDetectionView_next = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Next)
        locationDetectionView_next.value = MD2String("Next")
        locationDetectionView_next.textStyle = MD2WidgetTextStyle.Bold
        locationDetectionView_next.fontSize = MD2Float(1.2)
        locationDetectionView_next.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_next)
        let locationDetectionView_wrapper_next = MD2WidgetWrapper(widget: locationDetectionView_next)
        locationDetectionView_wrapper_next.setDisabled(false)
        widgetRegistry.add(locationDetectionView_wrapper_next)
        

        // VIEW
        let locationVerifyView = MD2FlowLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView)
        locationVerifyView.orientation = MD2FlowLayoutPane.Orientation.Vertical
        
        let locationVerifyView_titleLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_TitleLbl)
        locationVerifyView_titleLbl.value = MD2String("Verify your location")
        locationVerifyView_titleLbl.textStyle = MD2WidgetTextStyle.BoldItalic
        locationVerifyView_titleLbl.fontSize = MD2Float(2.5)
        locationVerifyView_titleLbl.color = MD2String("#000000")
        locationVerifyView.addWidget(locationVerifyView_titleLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_titleLbl))
        
        let locationVerifyView_addressView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView)
        locationVerifyView_addressView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_addressView)
        
        let locationVerifyView_streetLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_StreetLbl)
        locationVerifyView_streetLbl.value = MD2String("Street")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_streetLbl))
        
        let locationVerifyView_streetValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_StreetValue)
        locationVerifyView_streetValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_streetValue))
        
        let locationVerifyView_streetNoLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_StreetNoLbl)
        locationVerifyView_streetNoLbl.value = MD2String("Street number")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_streetNoLbl))
        
        let locationVerifyView_streetNoValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_StreetNoValue)
        locationVerifyView_streetNoValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_streetNoValue))
        
        let locationVerifyView_zipLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_ZipLbl)
        locationVerifyView_zipLbl.value = MD2String("Zip code")
        locationVerifyView_addressView.addWidget(locationVerifyView_zipLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_zipLbl))
        
        let locationVerifyView_zipValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_ZipValue)
        locationVerifyView_zipValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_zipValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_zipValue))
        
        let locationVerifyView_cityLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_CityLbl)
        locationVerifyView_cityLbl.value = MD2String("City")
        locationVerifyView_addressView.addWidget(locationVerifyView_cityLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_cityLbl))
        
        let locationVerifyView_cityValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_CityValue)
        locationVerifyView_cityValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_cityValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_cityValue))
        
        let locationVerifyView_spacer = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Spacer)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer)
        
        let locationVerifyView_spacer2 = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Spacer2)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer2)
        
        let locationVerifyView_countryLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_CountryLbl)
        locationVerifyView_countryLbl.value = MD2String("Country")
        locationVerifyView_addressView.addWidget(locationVerifyView_countryLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_countryLbl))
        
        let locationVerifyView_countryValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_CountryValue)
        locationVerifyView_countryValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_countryValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_countryValue))
        
        let locationVerifyView_latLoView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView)
        locationVerifyView_latLoView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_latLoView)
        
        let locationVerifyView_latLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatLbl)
        locationVerifyView_latLbl.value = MD2String("Latitude")
        locationVerifyView_latLoView.addWidget(locationVerifyView_latLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_latLbl))
        
        let locationVerifyView_latitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatitudeValue)
        locationVerifyView_latitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_latitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_latitudeValue))
        
        let locationVerifyView_longLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LongLbl)
        locationVerifyView_longLbl.value = MD2String("Latitude")
        locationVerifyView_latLoView.addWidget(locationVerifyView_longLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_longLbl))
        
        let locationVerifyView_longitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LongitudeValue)
        locationVerifyView_longitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_longitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_longitudeValue))
        
        let locationVerifyView_spacer3 = MD2SpacerWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Spacer3)
        locationVerifyView.addWidget(locationVerifyView_spacer3)
        
        let locationVerifyView_navbar = MD2FlowLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_Navbar)
        locationVerifyView_navbar.orientation = MD2FlowLayoutPane.Orientation.Horizontal
        locationVerifyView.addWidget(locationVerifyView_navbar)
        
        let locationVerifyView_previous = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Previous)
        locationVerifyView_previous.value = MD2String("Previous")
        locationVerifyView_previous.textStyle = MD2WidgetTextStyle.Bold
        locationVerifyView_previous.fontSize = MD2Float(1.2)
        locationVerifyView_previous.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_previous)
        let locationVerifyView_wrapper_previous = MD2WidgetWrapper(widget: locationVerifyView_previous)
        locationVerifyView_wrapper_previous.setDisabled(false)
        widgetRegistry.add(locationVerifyView_wrapper_previous)
        
        let locationVerifyView_cancel2 = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Cancel2)
        locationVerifyView_cancel2.value = MD2String("Cancel")
        locationVerifyView_cancel2.textStyle = MD2WidgetTextStyle.Bold
        locationVerifyView_cancel2.fontSize = MD2Float(1.2)
        locationVerifyView_cancel2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_cancel2)
        let locationVerifyView_wrapper_cancel2 = MD2WidgetWrapper(widget: locationVerifyView_cancel2)
        locationVerifyView_wrapper_cancel2.setDisabled(false)
        widgetRegistry.add(locationVerifyView_wrapper_cancel2)
        
        let locationVerifyView_next2 = MD2ButtonWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Next2)
        locationVerifyView_next2.value = MD2String("Next")
        locationVerifyView_next2.textStyle = MD2WidgetTextStyle.Bold
        locationVerifyView_next2.fontSize = MD2Float(1.2)
        locationVerifyView_next2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_next2)
        let locationVerifyView_wrapper_next2 = MD2WidgetWrapper(widget: locationVerifyView_next2)
        locationVerifyView_wrapper_next2.setDisabled(false)
        widgetRegistry.add(locationVerifyView_wrapper_next2)
        
        /*
        let datePicker = DateTimePickerWidget(widgetId: WidgetMapping.DatePicker1, initialValue: MD2DateTime())
        datePicker.pickerMode = UIDatePickerMode.Time
        mainLayout.addWidget(datePicker)
        let datePickerWrapper = WidgetWrapper(widget: datePicker)
        widgetRegistry.add(datePickerWrapper)
        
        let optionWidget = OptionWidget(widgetId: WidgetMapping.Option1, initialValue: MD2String("dummytext3"))
        optionWidget.options = ComplaintStatus().getAllValues()
        mainLayout.addWidget(optionWidget)
        let optionFieldWidgetWrapper = WidgetWrapper(widget: optionWidget)
        widgetRegistry.add(optionFieldWidgetWrapper)
        
        let subLayout = FlowLayoutPane(widgetId: WidgetMapping.SubLayout1)
        subLayout.orientation = FlowLayoutPane.Orientation.Horizontal
        mainLayout.addWidget(subLayout)
        
        let switchWidget = SwitchWidget(widgetId: WidgetMapping.Switch1, initialValue: MD2Boolean(true))
        subLayout.addWidget(switchWidget)
        let switchWidgetWrapper = WidgetWrapper(widget: switchWidget)
        widgetRegistry.add(switchWidgetWrapper)
        */
        
        // Initialize content providers
        let oneComplaintContentProvider = MD2ComplaintContentProvider(content: MD2Complaint())
        MD2ContentProviderRegistry.instance.addContentProvider("ComplaintProvider", provider: oneComplaintContentProvider)
        
        let address = MD2Address()
        //address.internalId = MD2Integer(1)
        address.set("myCity", value: MD2String("Muenster"))
        let oneAddressContentProvider = MD2AddressContentProvider(content: address)
        MD2ContentProviderRegistry.instance.addContentProvider("AddressProvider", provider: oneAddressContentProvider)
        
        //oneAddressContentProvider.save()
        
        let secondAddressContentProvider = MD2AddressContentProvider(content: address)
        //secondAddressContentProvider.load()
        println(secondAddressContentProvider.content?.toString())
        
        
        // Initialize the view manager
        var viewManager = MD2ViewManager.instance
        viewManager.window = window
        
        // Initialize all views
        viewManager.setupView("LocationDetectionView", view: locationDetectionView)
        viewManager.setupView("LocationVerifyView", view: locationVerifyView)
        
        // Initialize process chains and workflowElements
        let pcLocationDetection_LocationProcessChain = MD2ProcessChain(processChainSignature: "LocationDetection_LocationProcessChain")
        let step1 = pcLocationDetection_LocationProcessChain.addProcessChainStep("LocationDetection", viewName: "LocationDetectionView")
        step1.addGoTo(MD2ProcessChainStep.GoToType.Proceed, eventType: MD2EventType.OnClick, widget: MD2WidgetMapping.LocationDetectionView_Next, action: MD2CustomAction_SaveComplaint(), goToStep: nil)
        
        let step2 = pcLocationDetection_LocationProcessChain.addProcessChainStep("LocationVerify", viewName: "LocationVerifyView")
        step2.addGoTo(MD2ProcessChainStep.GoToType.Reverse, eventType: MD2EventType.OnClick, widget: MD2WidgetMapping.LocationVerifyView_Previous, action: nil, goToStep: nil)
        
        MD2ProcessChainRegistry.instance.addProcessChain(pcLocationDetection_LocationProcessChain)
        
        let wfeLocationDetection = MD2WorkflowElement(name: "LocationDetection", onInit: MD2CustomAction_Init(), defaultProcessChain: pcLocationDetection_LocationProcessChain)
        wfeLocationDetection.addInitialAction(MD2CustomAction_ButtonInit())
        
        // Register workflowEvents
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.LocationDetection_DoneEvent,
            actionType: MD2WorkflowActionType.End,
            workflowElement: wfeLocationDetection)
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.LocationDetection_CancelWorkflowEvent,
            actionType: MD2WorkflowActionType.End,
            workflowElement: wfeLocationDetection)
        
        // Start initial workflow of the app
        MD2SetWorkflowElementAction(actionSignature: "InitialAction", workflowElement: wfeLocationDetection).execute()
        
        println("[Controller] Startup completed")
    }
}