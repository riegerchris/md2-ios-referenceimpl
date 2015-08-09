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

        let locationDetectionView_titleLbl = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_TitleLbl, initialValue: MD2String("Enter your location"))
        locationDetectionView_titleLbl.textStyle = WidgetTextStyle.BoldItalic
        locationDetectionView_titleLbl.fontSize = MD2Float(2.5)
        locationDetectionView_titleLbl.color = MD2String("#000000")
        locationDetectionView.addWidget(locationDetectionView_titleLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_titleLbl))
        
        let locationDetectionView_addressData = GridLayoutPane(widgetId: WidgetMapping.LocationDetectionView_AddressData)
        locationDetectionView_addressData.columns = MD2Integer(2)
        locationDetectionView.addWidget(locationDetectionView_addressData)
        
        let locationDetectionView_streetValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_StreetValueLabel, initialValue: MD2String("Street:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetValueLabel))
        
        let locationDetectionView_streetValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_StreetValue, initialValue: MD2String())
        locationDetectionView_streetValue.tooltip = MD2String("Please insert the name of your street.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetValue))
        
        let locationDetectionView_streetNoValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_StreetNoValueLabel, initialValue: MD2String("Street number:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetNoValueLabel))
        
        let locationDetectionView_streetNoValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_StreetNoValue, initialValue: MD2String())
        locationDetectionView_streetNoValue.tooltip = MD2String("Please insert your street number.")
        locationDetectionView_addressData.addWidget(locationDetectionView_streetNoValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_streetNoValue))
        
        let locationDetectionView_zipValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_ZipValueLabel, initialValue: MD2String("Zip code:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_zipValueLabel))
        
        let locationDetectionView_zipValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_ZipValue, initialValue: MD2String())
        locationDetectionView_zipValue.tooltip = MD2String("Please insert the zip code of your location.")
        locationDetectionView_addressData.addWidget(locationDetectionView_zipValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_zipValue))
        
        let locationDetectionView_cityValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_CityValueLabel, initialValue: MD2String("City:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_cityValueLabel))
        
        let locationDetectionView_cityValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_CityValue, initialValue: MD2String())
        locationDetectionView_cityValue.tooltip = MD2String("Please insert your city.")
        locationDetectionView_addressData.addWidget(locationDetectionView_cityValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_cityValue))
        
        /*
        let locationDetectionView_spacer = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer)
        
        let locationDetectionView_spacer5 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer5)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer5)
        */
        
        let locationDetectionView_countryValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_CountryValueLabel, initialValue: MD2String("Country:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_countryValueLabel))
        
        let locationDetectionView_countryValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_CountryValue, initialValue: MD2String())
        locationDetectionView_countryValue.tooltip = MD2String("Please insert your country.")
        locationDetectionView_addressData.addWidget(locationDetectionView_countryValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_countryValue))
        
        let locationDetectionView_spacer2 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer2)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer2)
        
        let locationDetectionView_spacer3 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer3)
        locationDetectionView_addressData.addWidget(locationDetectionView_spacer3)
        
        // Number input; places 6
        let locationDetectionView_latitudeValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_LatitudeValueLabel, initialValue: MD2String("Latitude:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_latitudeValueLabel))
        
        let locationDetectionView_latitudeValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_LatitudeValue, initialValue: MD2String())
        locationDetectionView_latitudeValue.tooltip = MD2String("Please insert your coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_latitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_latitudeValue))
        
        let locationDetectionView_longitudeValueLabel = LabelWidget(widgetId: WidgetMapping.LocationDetectionView_LongitudeValueLabel, initialValue: MD2String("Longitude:"))
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValueLabel)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_longitudeValueLabel))
        
        let locationDetectionView_longitudeValue = TextFieldWidget(widgetId: WidgetMapping.LocationDetectionView_LongitudeValue, initialValue: MD2String())
        locationDetectionView_longitudeValue.tooltip = MD2String("Please insert your longitude coordinate.")
        locationDetectionView_addressData.addWidget(locationDetectionView_longitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationDetectionView_longitudeValue))
        
        
        let locationDetectionView_spacer4 = SpacerWidget(widgetId: WidgetMapping.LocationDetectionView_Spacer4)
        locationDetectionView.addWidget(locationDetectionView_spacer4)
        
        
        let locationDetectionView_navbar = GridLayoutPane(widgetId: WidgetMapping.LocationDetectionView_Navbar)
        locationDetectionView_navbar.columns = MD2Integer(3)
        locationDetectionView.addWidget(locationDetectionView_navbar)
        
        let locationDetectionView_previousDummy = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_PreviousDummy, initialValue: MD2String("Previous"))
        locationDetectionView_previousDummy.textStyle = WidgetTextStyle.Bold
        locationDetectionView_previousDummy.fontSize = MD2Float(1.2)
        locationDetectionView_previousDummy.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_previousDummy)
        let locationDetectionView_wrapper_previousDummy = WidgetWrapper(widget: locationDetectionView_previousDummy)
        locationDetectionView_wrapper_previousDummy.disabled = MD2Boolean(false)
        widgetRegistry.add(locationDetectionView_wrapper_previousDummy)

        let locationDetectionView_cancel = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_Cancel, initialValue: MD2String("Cancel"))
        locationDetectionView_cancel.textStyle = WidgetTextStyle.Bold
        locationDetectionView_cancel.fontSize = MD2Float(1.2)
        locationDetectionView_cancel.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_cancel)
        let locationDetectionView_wrapper_cancel = WidgetWrapper(widget: locationDetectionView_cancel)
        locationDetectionView_wrapper_cancel.disabled = MD2Boolean(false)
        widgetRegistry.add(locationDetectionView_wrapper_cancel)
        
        let locationDetectionView_next = ButtonWidget(widgetId: WidgetMapping.LocationDetectionView_Next, initialValue: MD2String("Next"))
        locationDetectionView_next.textStyle = WidgetTextStyle.Bold
        locationDetectionView_next.fontSize = MD2Float(1.2)
        locationDetectionView_next.color = MD2String("#007AFF")
        locationDetectionView_navbar.addWidget(locationDetectionView_next)
        let locationDetectionView_wrapper_next = WidgetWrapper(widget: locationDetectionView_next)
        locationDetectionView_wrapper_next.disabled = MD2Boolean(false)
        widgetRegistry.add(locationDetectionView_wrapper_next)
        

        // VIEW
        let locationVerifyView = FlowLayoutPane(widgetId: WidgetMapping.LocationVerifyView)
        locationVerifyView.orientation = FlowLayoutPane.Orientation.Vertical
        
        let locationVerifyView_titleLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_TitleLbl, initialValue: MD2String("Enter your location"))
        locationVerifyView_titleLbl.textStyle = WidgetTextStyle.BoldItalic
        locationVerifyView_titleLbl.fontSize = MD2Float(2.5)
        locationVerifyView_titleLbl.color = MD2String("#000000")
        locationVerifyView.addWidget(locationVerifyView_titleLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_titleLbl))
        
        let locationVerifyView_addressView = GridLayoutPane(widgetId: WidgetMapping.LocationVerifyView_AddressView)
        locationVerifyView_addressView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_addressView)
        
        let locationVerifyView_streetLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetLbl, initialValue: MD2String("Street"))
        locationVerifyView_addressView.addWidget(locationVerifyView_streetLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetLbl))
        
        let locationVerifyView_streetValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetValue, initialValue: MD2String("TEST"))
        locationVerifyView_streetValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetValue))
        
        let locationVerifyView_streetNoLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetNoLbl, initialValue: MD2String("Street number"))
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetNoLbl))
        
        let locationVerifyView_streetNoValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_StreetNoValue, initialValue: MD2String("TEST"))
        locationVerifyView_streetNoValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_streetNoValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_streetNoValue))
        
        let locationVerifyView_zipLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_ZipLbl, initialValue: MD2String("Zip code"))
        locationVerifyView_addressView.addWidget(locationVerifyView_zipLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_zipLbl))
        
        let locationVerifyView_zipValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_ZipValue, initialValue: MD2String("TEST"))
        locationVerifyView_zipValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_zipValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_zipValue))
        
        let locationVerifyView_cityLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CityLbl, initialValue: MD2String("City"))
        locationVerifyView_addressView.addWidget(locationVerifyView_cityLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_cityLbl))
        
        let locationVerifyView_cityValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CityValue, initialValue: MD2String("TEST"))
        locationVerifyView_cityValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_cityValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_cityValue))
        
        let locationVerifyView_spacer = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer)
        
        let locationVerifyView_spacer2 = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer2)
        locationVerifyView_addressView.addWidget(locationVerifyView_spacer2)
        
        let locationVerifyView_countryLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CountryLbl, initialValue: MD2String("Country"))
        locationVerifyView_addressView.addWidget(locationVerifyView_countryLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_countryLbl))
        
        let locationVerifyView_countryValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_CountryValue, initialValue: MD2String("TEST"))
        locationVerifyView_countryValue.color = MD2String("#32CD32")
        locationVerifyView_addressView.addWidget(locationVerifyView_countryValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_countryValue))
        
        let locationVerifyView_latLoView = GridLayoutPane(widgetId: WidgetMapping.LocationVerifyView_LatLoView)
        locationVerifyView_latLoView.columns = MD2Integer(4)
        locationVerifyView.addWidget(locationVerifyView_latLoView)
        
        let locationVerifyView_latLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LatLbl, initialValue: MD2String("Latitude"))
        locationVerifyView_latLoView.addWidget(locationVerifyView_latLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_latLbl))
        
        let locationVerifyView_latitudeValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LatitudeValue, initialValue: MD2String("TEST"))
        locationVerifyView_latitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_latitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_latitudeValue))
        
        let locationVerifyView_longLbl = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LongLbl, initialValue: MD2String("Latitude"))
        locationVerifyView_latLoView.addWidget(locationVerifyView_longLbl)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_longLbl))
        
        let locationVerifyView_longitudeValue = LabelWidget(widgetId: WidgetMapping.LocationVerifyView_LongitudeValue, initialValue: MD2String("TEST"))
        locationVerifyView_longitudeValue.color = MD2String("#32CD32")
        locationVerifyView_latLoView.addWidget(locationVerifyView_longitudeValue)
        widgetRegistry.add(WidgetWrapper(widget: locationVerifyView_longitudeValue))
        
        let locationVerifyView_spacer3 = SpacerWidget(widgetId: WidgetMapping.LocationVerifyView_Spacer3)
        locationVerifyView.addWidget(locationVerifyView_spacer3)
        
        let locationVerifyView_navbar = FlowLayoutPane(widgetId: WidgetMapping.LocationVerifyView_Navbar)
        locationVerifyView_navbar.orientation = FlowLayoutPane.Orientation.Horizontal
        locationVerifyView.addWidget(locationVerifyView_navbar)
        
        let locationVerifyView_previous = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Previous, initialValue: MD2String("Previous"))
        locationVerifyView_previous.textStyle = WidgetTextStyle.Bold
        locationVerifyView_previous.fontSize = MD2Float(1.2)
        locationVerifyView_previous.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_previous)
        let locationVerifyView_wrapper_previous = WidgetWrapper(widget: locationVerifyView_previous)
        locationVerifyView_wrapper_previous.disabled = MD2Boolean(false)
        widgetRegistry.add(locationVerifyView_wrapper_previous)
        
        let locationVerifyView_cancel2 = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Cancel2, initialValue: MD2String("Cancel"))
        locationVerifyView_cancel2.textStyle = WidgetTextStyle.Bold
        locationVerifyView_cancel2.fontSize = MD2Float(1.2)
        locationVerifyView_cancel2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_cancel2)
        let locationVerifyView_wrapper_cancel2 = WidgetWrapper(widget: locationVerifyView_cancel2)
        locationVerifyView_wrapper_cancel2.disabled = MD2Boolean(true)
        widgetRegistry.add(locationVerifyView_wrapper_cancel2)
        
        let locationVerifyView_next2 = ButtonWidget(widgetId: WidgetMapping.LocationVerifyView_Next2, initialValue: MD2String("Next"))
        locationVerifyView_next2.textStyle = WidgetTextStyle.Bold
        locationVerifyView_next2.fontSize = MD2Float(1.2)
        locationVerifyView_next2.color = MD2String("#007AFF")
        locationVerifyView_navbar.addWidget(locationVerifyView_next2)
        let locationVerifyView_wrapper_next2 = WidgetWrapper(widget: locationVerifyView_next2)
        locationVerifyView_wrapper_next2.disabled = MD2Boolean(false)
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
        
        // Initialize event handlers
        let onTouchHandler = OnTouchHandler.instance
        
        // Initialize content providers
        var contentProviderRegistry = ContentProviderRegistry()
        
        let oneComplaintContentProvider = ComplaintContentProvider(content: Complaint())
        contentProviderRegistry.addContentProvider(oneComplaintContentProvider)
        
        // Initialize the view manager
        var viewManager = ViewManager()
        viewManager.window = window
        
        // Initialize all views
        viewManager.setupView(MD2String("LocationDetectionView"), view: locationDetectionView)
        viewManager.setupView(MD2String("LocationVerifyView"), view: locationVerifyView)
        
        // Initialize data mapper
        let dataMapper = DataMapper()
                
        // Initialize and register Actions
        let inputPageNextAction = GotoViewAction(actionSignature: MD2String("inputPageNextAction"), widgetRegistry: widgetRegistry, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: WidgetMapping.LocationVerifyView)
        onTouchHandler.registerAction(inputPageNextAction, widget: locationDetectionView_wrapper_next)
        
        let verifyViewPreviousAction = GotoViewAction(actionSignature: MD2String("verifyViewPreviousAction"), widgetRegistry: widgetRegistry, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: WidgetMapping.LocationDetectionView)
        onTouchHandler.registerAction(verifyViewPreviousAction, widget: locationVerifyView_wrapper_previous)
        
        // Start initial action of the app
        let initialAction = GotoViewAction(actionSignature: MD2String("initialAction"), widgetRegistry: widgetRegistry, contentProviderRegistry: contentProviderRegistry, viewManager: viewManager, dataMapper: dataMapper, targetView: WidgetMapping.LocationDetectionView)
        initialAction.execute()

        println("[Controller] Startup completed")
    }
}