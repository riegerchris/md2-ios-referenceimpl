//
//  Controller.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class Controller {
    
    func run(window: UIWindow) {
        // Initialize the widget registry
        var widgetRegistry = WidgetRegistry.instance

        // Initialize all view elements
        // VIEW
        let locationDetectionView = FlowLayoutPane(widgetId: WidgetMapping.LocationDetectionView)
        locationDetectionView.orientation = FlowLayoutPane.Orientation.Vertical

        let locationDetectionView_titleLbl = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_TitleLbl)
        locationDetectionView_titleLbl.value = MD2String("Enter your location")
        locationDetectionView_titleLbl.textStyle = WidgetTextStyle.BoldItalic
        locationDetectionView_titleLbl.fontSize = MD2Float(2.5)
        locationDetectionView_titleLbl.color = MD2String("#000000")
        locationDetectionView.addWidget(locationDetectionView_titleLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_titleLbl))
        
        let locationDetectionView_addressData = GridLayoutPane(widgetId: WidgetMapping.LocationDetectionView_AddressData)
        locationDetectionView_addressData.columns = MD2Integer(2)
        locationDetectionView.addWidget(locationDetectionView_addressData)
        
        let locationDetectionView_streetValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_StreetValueLabel)
        locationDetectionView_streetValueLabel.value = MD2String("Street:")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetValueLabel))
        
        let locationDetectionView_streetValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_StreetValue)
        locationDetectionView_streetValue.tooltip = MD2String("Please insert the name of your street.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetValue))
        
        let locationDetectionView_streetNoValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_StreetNoValueLabel)
        locationDetectionView_streetNoValueLabel.value = MD2String("Street number:")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetNoValueLabel))
        
        let locationDetectionView_streetNoValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_StreetNoValue)
        locationDetectionView_streetNoValue.tooltip = MD2String("Please insert your street number.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetNoValue))
        
        let locationDetectionView_zipValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_ZipValueLabel)
        locationDetectionView_zipValueLabel.value = MD2String("Zip code:")
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_zipValueLabel))
        
        let locationDetectionView_zipValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_ZipValue)
        locationDetectionView_zipValue.tooltip = MD2String("Please insert the zip code of your location.")
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_zipValue))
        
        let locationDetectionView_cityValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_CityValueLabel)
        locationDetectionView_cityValueLabel.value = MD2String("City:")
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_cityValueLabel))
        
        let locationDetectionView_cityValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_CityValue)
        locationDetectionView_cityValue.tooltip = MD2String("Please insert your city.")
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_cityValue))
        
        /*
        let locationDetectionView_spacer = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer)
        
        let locationDetectionView_spacer5 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer5)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer5)
        */
        
        let locationDetectionView_countryValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_CountryValueLabel)
        locationDetectionView_countryValueLabel.value = MD2String("Country:")
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_countryValueLabel))
        
        let locationDetectionView_countryValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_CountryValue)
        locationDetectionView_countryValue.tooltip = MD2String("Please insert your country.")
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_countryValue))
        
        let locationDetectionView_spacer2 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer2)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer2)
        
        let locationDetectionView_spacer3 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer3)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer3)
        
        // Number input; places 6
        let locationDetectionView_latitudeValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_LatitudeValueLabel)
        locationDetectionView_latitudeValueLabel.value = MD2String("Latitude:")
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_latitudeValueLabel))
        
        let locationDetectionView_latitudeValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_LatitudeValue)
        locationDetectionView_latitudeValue.tooltip = MD2String("Please insert your coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_latitudeValue))
        
        let locationDetectionView_longitudeValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_LongitudeValueLabel)
        locationDetectionView_longitudeValueLabel.value = MD2String("Longitude:")
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_longitudeValueLabel))
        
        let locationDetectionView_longitudeValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_LongitudeValue)
        locationDetectionView_longitudeValue.tooltip = MD2String("Please insert your longitude coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_longitudeValue))
        
        let locationDetectionView_spacer4 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer4)
        locationDetectionView.addWidget(locationDetectionView_spacer4)
        
        let locationDetectionView_navbar = GridLayoutPane(widgetId: WidgetMapping.LocationDetectionView_Navbar)
        locationDetectionView_navbar.columns = MD2Integer(3)
        locationDetectionView.addWidget(locationDetectionView_navbar)
        
        let locationDetectionView_previousDummy = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_PreviousDummy)
        locationDetectionView_previousDummy.value = MD2String("Previous")
        locationDetectionView_previousDummy.textStyle = WidgetTextStyle.Bold
        locationDetectionView_previousDummy.fontSize = MD2Float(1.2)
        locationDetectionView_previousDummy.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_previousDummy)
        let locationDetectionView_wrapper_previousDummy = WidgetWrapper(widget: locationDetectionView_previousDummy)
        locationDetectionView_wrapper_previousDummy.isElementDisabled = false
        widgetRegistry.add(locationDetectionView_wrapper_previousDummy)

        let locationDetectionView_cancel = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_Cancel)
        locationDetectionView_cancel.value = MD2String("Cancel")
        locationDetectionView_cancel.textStyle = WidgetTextStyle.Bold
        locationDetectionView_cancel.fontSize = MD2Float(1.2)
        locationDetectionView_cancel.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_cancel)
        let locationDetectionView_wrapper_cancel = WidgetWrapper(widget: locationDetectionView_cancel)
        locationDetectionView_wrapper_cancel.setDisabled(false)
        widgetRegistry.add(locationDetectionView_wrapper_cancel)
        
        let locationDetectionView_next = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_Next)
        locationDetectionView_next.value = MD2String("Next")
        locationDetectionView_next.textStyle = WidgetTextStyle.Bold
        locationDetectionView_next.fontSize = MD2Float(1.2)
        locationDetectionView_next.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_next)
        let locationDetectionView_wrapper_next = WidgetWrapper(widget: locationDetectionView_next)
        locationDetectionView_wrapper_next.setDisabled(false)
        widgetRegistry.add(locationDetectionView_wrapper_next)
        

        // VIEW
        let locationVerifyView = FlowLayoutPane(widgetId: WidgetMapping.LocationVerifyView)
        locationVerifyView.orientation = FlowLayoutPane.Orientation.Vertical
        
        let locationVerifyView_titleLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_TitleLbl)
        locationVerifyView_titleLbl.value = MD2String("Verify your location")
        locationVerifyView_titleLbl.textStyle = WidgetTextStyle.BoldItalic
        locationVerifyView_titleLbl.fontSize = MD2Float(2.5)
        locationVerifyView_titleLbl.color = MD2String("#000000")
        locationVerifyView.addWidget(locationVerifyView_titleLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_titleLbl))
        
        let locationVerifyView_addressView = GridLayoutPane(widgetId: WidgetMapping.LocationVerifyView_AddressView)
        locationVerifyView_addressView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_addressView)
        
        let locationVerifyView_streetLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetLbl)
        locationVerifyView_streetLbl.value = MD2String("Street")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetLbl))
        
        let locationVerifyView_streetValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetValue)
        locationVerifyView_streetValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetValue))
        
        let locationVerifyView_streetNoLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetNoLbl)
        locationVerifyView_streetNoLbl.value = MD2String("Street number")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetNoLbl))
        
        let locationVerifyView_streetNoValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetNoValue)
        locationVerifyView_streetNoValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetNoValue))
        
        let locationVerifyView_zipLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_ZipLbl)
        locationVerifyView_zipLbl.value = MD2String("Zip code")
        locationVerifyView_addressView.addWidget(locationVerifyView_zipLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_zipLbl))
        
        let locationVerifyView_zipValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_ZipValue)
        locationVerifyView_zipValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_zipValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_zipValue))
        
        let locationVerifyView_cityLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CityLbl)
        locationVerifyView_cityLbl.value = MD2String("City")
        locationVerifyView_addressView.addWidget(locationVerifyView_cityLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_cityLbl))
        
        let locationVerifyView_cityValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CityValue)
        locationVerifyView_cityValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_cityValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_cityValue))
        
        let locationVerifyView_spacer = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer)
        
        let locationVerifyView_spacer2 = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer2)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer2)
        
        let locationVerifyView_countryLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CountryLbl)
        locationVerifyView_countryLbl.value = MD2String("Country")
        locationVerifyView_addressView.addWidget(locationVerifyView_countryLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_countryLbl))
        
        let locationVerifyView_countryValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CountryValue)
        locationVerifyView_countryValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_countryValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_countryValue))
        
        let locationVerifyView_latLoView = GridLayoutPane(widgetId: WidgetMapping.LocationVerifyView_LatLoView)
        locationVerifyView_latLoView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_latLoView)
        
        let locationVerifyView_latLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LatLbl)
        locationVerifyView_latLbl.value = MD2String("Latitude")
        locationVerifyView_latLoView.addWidget(locationVerifyView_latLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_latLbl))
        
        let locationVerifyView_latitudeValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LatitudeValue)
        locationVerifyView_latitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_latitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_latitudeValue))
        
        let locationVerifyView_longLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LongLbl)
        locationVerifyView_longLbl.value = MD2String("Latitude")
        locationVerifyView_latLoView.addWidget(locationVerifyView_longLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_longLbl))
        
        let locationVerifyView_longitudeValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LongitudeValue)
        locationVerifyView_longitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_longitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_longitudeValue))
        
        let locationVerifyView_spacer3 = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer3)
        locationVerifyView.addWidget(locationVerifyView_spacer3)
        
        let locationVerifyView_navbar = FlowLayoutPane(widgetId: WidgetMapping.LocationVerifyView_Navbar)
        locationVerifyView_navbar.orientation = FlowLayoutPane.Orientation.Horizontal
        locationVerifyView.addWidget(locationVerifyView_navbar)
        
        let locationVerifyView_previous = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Previous)
        locationVerifyView_previous.value = MD2String("Previous")
        locationVerifyView_previous.textStyle = WidgetTextStyle.Bold
        locationVerifyView_previous.fontSize = MD2Float(1.2)
        locationVerifyView_previous.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_previous)
        let locationVerifyView_wrapper_previous = WidgetWrapper(widget: locationVerifyView_previous)
        locationVerifyView_wrapper_previous.setDisabled(false)
        widgetRegistry.add(locationVerifyView_wrapper_previous)
        
        let locationVerifyView_cancel2 = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Cancel2)
        locationVerifyView_cancel2.value = MD2String("Cancel")
        locationVerifyView_cancel2.textStyle = WidgetTextStyle.Bold
        locationVerifyView_cancel2.fontSize = MD2Float(1.2)
        locationVerifyView_cancel2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_cancel2)
        let locationVerifyView_wrapper_cancel2 = WidgetWrapper(widget: locationVerifyView_cancel2)
        locationVerifyView_wrapper_cancel2.setDisabled(false)
        widgetRegistry.add(locationVerifyView_wrapper_cancel2)
        
        let locationVerifyView_next2 = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Next2)
        locationVerifyView_next2.value = MD2String("Next")
        locationVerifyView_next2.textStyle = WidgetTextStyle.Bold
        locationVerifyView_next2.fontSize = MD2Float(1.2)
        locationVerifyView_next2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_next2)
        let locationVerifyView_wrapper_next2 = WidgetWrapper(widget: locationVerifyView_next2)
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
        let oneComplaintContentProvider = ComplaintContentProvider(content: Complaint())
        ContentProviderRegistry.instance.addContentProvider("ComplaintProvider", provider: oneComplaintContentProvider)
        
        let address = Address()
        //address.internalId = MD2Integer(1)
        address.set("myCity", value: MD2String("Muenster"))
        let oneAddressContentProvider = AddressContentProvider(content: address)
        ContentProviderRegistry.instance.addContentProvider("AddressProvider", provider: oneAddressContentProvider)
        
        //oneAddressContentProvider.save()
        
        let secondAddressContentProvider = AddressContentProvider(content: address)
        //secondAddressContentProvider.load()
        println(secondAddressContentProvider.content?.toString())
        
        
        // Initialize the view manager
        var viewManager = ViewManager.instance
        viewManager.window = window
        
        // Initialize all views
        viewManager.setupView("LocationDetectionView", view: locationDetectionView)
        viewManager.setupView("LocationVerifyView", view: locationVerifyView)
        
        // Initialize process chains and workflowElements
        let pcLocationDetection_LocationProcessChain = ProcessChain(processChainSignature: "LocationDetection_LocationProcessChain")
        let step1 = pcLocationDetection_LocationProcessChain.addProcessChainStep("LocationDetection", viewName: "LocationDetectionView")
        step1.addGoTo(ProcessChainStep.GoToType.Proceed, eventType: EventType.OnClick, widget: WidgetMapping.LocationDetectionView_Next, action: CustomAction_SaveComplaint(), goToStep: nil)
        
        let step2 = pcLocationDetection_LocationProcessChain.addProcessChainStep("LocationVerify", viewName: "LocationVerifyView")
        step2.addGoTo(ProcessChainStep.GoToType.Reverse, eventType: EventType.OnClick, widget: WidgetMapping.LocationVerifyView_Previous, action: nil, goToStep: nil)
        
        ProcessChainRegistry.instance.addProcessChain(pcLocationDetection_LocationProcessChain)
        
        let wfeLocationDetection = WorkflowElement(name: "LocationDetection", onInit: CustomAction_Init(), defaultProcessChain: pcLocationDetection_LocationProcessChain)
        wfeLocationDetection.addInitialAction(CustomAction_ButtonInit())
        
        // Register workflowEvents
        WorkflowEventHandler.instance.registerWorkflowElement(
            WorkflowEvent.LocationDetection_DoneEvent,
            actionType: WorkflowActionType.End,
            workflowElement: wfeLocationDetection)
        WorkflowEventHandler.instance.registerWorkflowElement(
            WorkflowEvent.LocationDetection_CancelWorkflowEvent,
            actionType: WorkflowActionType.End,
            workflowElement: wfeLocationDetection)
        
        // Start initial workflow of the app
        wfeLocationDetection.start()
        
        GotoViewAction(actionSignature: "initialAction", targetView: WidgetMapping.LocationDetectionView).execute()

        println("[Controller] Startup completed")
    }
}