//
//  MD2Controller.swift
//
//  Generated code by class 'IOSController' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

import UIKit

class MD2Controller {
    func run(window: UIWindow) {
        // Initialize the widget registry
        var widgetRegistry = MD2WidgetRegistry.instance

		/***************************************************
		 * 
		 * Initialize all view elements
		 * 
		 ***************************************************/
        // View: LocationDetectionView
        let locationDetectionView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView)
        locationDetectionView.columns = MD2Integer(1)
        locationDetectionView.rows = MD2Integer(5)
        locationDetectionView.width = Float(1/100 * 100)
        let locationDetectionView_TitleLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_TitleLbl)
        		locationDetectionView_TitleLbl.value = MD2String("Enter your location")
        		locationDetectionView_TitleLbl.fontSize = MD2Float(2.5)
        		locationDetectionView_TitleLbl.color = MD2String("#000000")
        		locationDetectionView_TitleLbl.textStyle = MD2WidgetTextStyle.BoldItalic
        		locationDetectionView.addWidget(locationDetectionView_TitleLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_TitleLbl))
        
        
        let locationDetectionView_Spacer403256 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView.addWidget(locationDetectionView_Spacer403256)
        
        
        let locationDetectionView_AddressData = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData)
        locationDetectionView_AddressData.columns = MD2Integer(2)
        locationDetectionView_AddressData.rows = MD2Integer(5)
        locationDetectionView_AddressData.width = Float(1/100 * 100)
        locationDetectionView.addWidget(locationDetectionView_AddressData)
        let locationDetectionView_AddressData___ContainerstreetValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetValue)
        locationDetectionView_AddressData___ContainerstreetValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainerstreetValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainerstreetValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainerstreetValue)
        let locationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue)
        		locationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue.value = MD2String("Street: ")
        		locationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainerstreetValue.addWidget(locationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue))
        
        
        let locationDetectionView_AddressData___ContainerstreetValue_streetValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetValue_streetValue)
        		locationDetectionView_AddressData___ContainerstreetValue_streetValue.value = MD2String("")
        		locationDetectionView_AddressData___ContainerstreetValue_streetValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainerstreetValue_streetValue.tooltip = MD2String("Please insert the name of your street.")
        		locationDetectionView_AddressData___ContainerstreetValue.addWidget(locationDetectionView_AddressData___ContainerstreetValue_streetValue)
        let wrapper_locationDetectionView_AddressData___ContainerstreetValue_streetValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerstreetValue_streetValue)
        wrapper_locationDetectionView_AddressData___ContainerstreetValue_streetValue.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainerstreetValue_streetValue)
        
        
        
        
        let locationDetectionView_AddressData___ContainerstreetNoValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetNoValue)
        locationDetectionView_AddressData___ContainerstreetNoValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainerstreetNoValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainerstreetNoValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainerstreetNoValue)
        let locationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue)
        		locationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue.value = MD2String("Street Number:")
        		locationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainerstreetNoValue.addWidget(locationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue))
        
        
        let locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue)
        		locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue.value = MD2String("")
        		locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue.tooltip = MD2String("Please insert your street-number.")
        		locationDetectionView_AddressData___ContainerstreetNoValue.addWidget(locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue)
        let wrapper_locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue)
        wrapper_locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue)
        
        
        
        
        let locationDetectionView_AddressData___ContainerzipValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerzipValue)
        locationDetectionView_AddressData___ContainerzipValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainerzipValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainerzipValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainerzipValue)
        let locationDetectionView_AddressData___ContainerzipValue___LabelzipValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerzipValue___LabelzipValue)
        		locationDetectionView_AddressData___ContainerzipValue___LabelzipValue.value = MD2String("ZipCode:")
        		locationDetectionView_AddressData___ContainerzipValue___LabelzipValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainerzipValue.addWidget(locationDetectionView_AddressData___ContainerzipValue___LabelzipValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerzipValue___LabelzipValue))
        
        
        let locationDetectionView_AddressData___ContainerzipValue_zipValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerzipValue_zipValue)
        		locationDetectionView_AddressData___ContainerzipValue_zipValue.value = MD2String("")
        		locationDetectionView_AddressData___ContainerzipValue_zipValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainerzipValue_zipValue.tooltip = MD2String("Please insert the zip-code of your location.")
        		locationDetectionView_AddressData___ContainerzipValue.addWidget(locationDetectionView_AddressData___ContainerzipValue_zipValue)
        let wrapper_locationDetectionView_AddressData___ContainerzipValue_zipValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerzipValue_zipValue)
        wrapper_locationDetectionView_AddressData___ContainerzipValue_zipValue.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainerzipValue_zipValue)
        
        
        
        
        let locationDetectionView_AddressData___ContainercityValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercityValue)
        locationDetectionView_AddressData___ContainercityValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainercityValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainercityValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainercityValue)
        let locationDetectionView_AddressData___ContainercityValue___LabelcityValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercityValue___LabelcityValue)
        		locationDetectionView_AddressData___ContainercityValue___LabelcityValue.value = MD2String("City:")
        		locationDetectionView_AddressData___ContainercityValue___LabelcityValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainercityValue.addWidget(locationDetectionView_AddressData___ContainercityValue___LabelcityValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainercityValue___LabelcityValue))
        
        
        let locationDetectionView_AddressData___ContainercityValue_cityValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercityValue_cityValue)
        		locationDetectionView_AddressData___ContainercityValue_cityValue.value = MD2String("")
        		locationDetectionView_AddressData___ContainercityValue_cityValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainercityValue_cityValue.tooltip = MD2String("Please insert your city.")
        		locationDetectionView_AddressData___ContainercityValue.addWidget(locationDetectionView_AddressData___ContainercityValue_cityValue)
        let wrapper_locationDetectionView_AddressData___ContainercityValue_cityValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainercityValue_cityValue)
        wrapper_locationDetectionView_AddressData___ContainercityValue_cityValue.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainercityValue_cityValue)
        
        
        
        
        let locationDetectionView_AddressData_Spacer247110 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView_AddressData_Spacer247110.width = Float(1/100 * 50)
        		locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData_Spacer247110)
        
        
        let locationDetectionView_AddressData___ContainercountryValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercountryValue)
        locationDetectionView_AddressData___ContainercountryValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainercountryValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainercountryValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainercountryValue)
        let locationDetectionView_AddressData___ContainercountryValue___LabelcountryValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercountryValue___LabelcountryValue)
        		locationDetectionView_AddressData___ContainercountryValue___LabelcountryValue.value = MD2String("Country: ")
        		locationDetectionView_AddressData___ContainercountryValue___LabelcountryValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainercountryValue.addWidget(locationDetectionView_AddressData___ContainercountryValue___LabelcountryValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainercountryValue___LabelcountryValue))
        
        
        let locationDetectionView_AddressData___ContainercountryValue_countryValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainercountryValue_countryValue)
        		locationDetectionView_AddressData___ContainercountryValue_countryValue.value = MD2String("")
        		locationDetectionView_AddressData___ContainercountryValue_countryValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainercountryValue_countryValue.tooltip = MD2String("Please insert the name of your country.")
        		locationDetectionView_AddressData___ContainercountryValue.addWidget(locationDetectionView_AddressData___ContainercountryValue_countryValue)
        let wrapper_locationDetectionView_AddressData___ContainercountryValue_countryValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainercountryValue_countryValue)
        wrapper_locationDetectionView_AddressData___ContainercountryValue_countryValue.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainercountryValue_countryValue)
        
        
        
        
        let locationDetectionView_AddressData_Spacer713718 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView_AddressData_Spacer713718.width = Float(1/100 * 50)
        		locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData_Spacer713718)
        
        
        let locationDetectionView_AddressData_Spacer28150 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView_AddressData_Spacer28150.width = Float(1/100 * 50)
        		locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData_Spacer28150)
        
        
        let locationDetectionView_AddressData___ContainerlatitudeValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlatitudeValue)
        locationDetectionView_AddressData___ContainerlatitudeValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainerlatitudeValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainerlatitudeValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainerlatitudeValue)
        let locationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue)
        		locationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue.value = MD2String("Latitude:")
        		locationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainerlatitudeValue.addWidget(locationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue))
        
        
        let locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue)
        		locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.value = MD2Float(Float(0.0))
        		locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.tooltip = MD2String("To get the value for latitude, use the My Location function down below.")
        		locationDetectionView_AddressData___ContainerlatitudeValue.addWidget(locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue)
        let wrapper_locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue)
        wrapper_locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.isElementDisabled = true
        wrapper_locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.addValidator(MD2IsNumberValidator(identifier: MD2String("locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue_auto_number"), 
        		message: nil))
        wrapper_locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue.addValidator(MD2StringRangeValidator(identifier: MD2String("locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue_auto_places"), 
        	message: nil, 
        	minLength: MD2Integer(0), 
        	maxLength: MD2Integer(6)))
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue)
        
        
        
        
        let locationDetectionView_AddressData___ContainerlongitudeValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlongitudeValue)
        locationDetectionView_AddressData___ContainerlongitudeValue.columns = MD2Integer(3)
        locationDetectionView_AddressData___ContainerlongitudeValue.rows = MD2Integer(1)
        locationDetectionView_AddressData___ContainerlongitudeValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData.addWidget(locationDetectionView_AddressData___ContainerlongitudeValue)
        let locationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue)
        		locationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue.value = MD2String("Longitude:")
        		locationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue.width = Float(1/100 * 40)
        		locationDetectionView_AddressData___ContainerlongitudeValue.addWidget(locationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue))
        
        
        let locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue)
        		locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.value = MD2Float(Float(0.0))
        		locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.width = Float(1/100 * 50)
        locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.tooltip = MD2String("To get the value for longitude, use the My Location function down below.")
        		locationDetectionView_AddressData___ContainerlongitudeValue.addWidget(locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue)
        let wrapper_locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue = MD2WidgetWrapper(widget: locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue)
        wrapper_locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.isElementDisabled = true
        wrapper_locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.addValidator(MD2IsNumberValidator(identifier: MD2String("locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue_auto_number"), 
        		message: nil))
        wrapper_locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue.addValidator(MD2StringRangeValidator(identifier: MD2String("locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue_auto_places"), 
        	message: nil, 
        	minLength: MD2Integer(0), 
        	maxLength: MD2Integer(6)))
        widgetRegistry.add(wrapper_locationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue)
        
        
        
        
        
        
        let locationDetectionView_Spacer236853 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView.addWidget(locationDetectionView_Spacer236853)
        
        
        let locationDetectionView_Navbar = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar)
        locationDetectionView_Navbar.columns = MD2Integer(3)
        locationDetectionView_Navbar.rows = MD2Integer(2)
        locationDetectionView_Navbar.width = Float(1/100 * 100)
        locationDetectionView.addWidget(locationDetectionView_Navbar)
        let locationDetectionView_Navbar_Spacer319101 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView_Navbar_Spacer319101.width = Float(1/100 * 34)
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_Spacer319101)
        
        
        let locationDetectionView_Navbar_DetectLocationBtn = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar_DetectLocationBtn)
        		locationDetectionView_Navbar_DetectLocationBtn.value = MD2String("My Location")
        		locationDetectionView_Navbar_DetectLocationBtn.width = Float(1/100 * 33)
        		locationDetectionView_Navbar_DetectLocationBtn.fontSize = MD2Float(1.2)
        		locationDetectionView_Navbar_DetectLocationBtn.color = MD2String("#007AFF")
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_DetectLocationBtn)
        let wrapper_locationDetectionView_Navbar_DetectLocationBtn = MD2WidgetWrapper(widget: locationDetectionView_Navbar_DetectLocationBtn)
        wrapper_locationDetectionView_Navbar_DetectLocationBtn.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_Navbar_DetectLocationBtn)
        
        
        let locationDetectionView_Navbar_Spacer85038 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView_Navbar_Spacer85038.width = Float(1/100 * 33)
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_Spacer85038)
        
        
        let locationDetectionView_Navbar_PreviousDummy = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar_PreviousDummy)
        		locationDetectionView_Navbar_PreviousDummy.value = MD2String("Previous")
        		locationDetectionView_Navbar_PreviousDummy.width = Float(1/100 * 34)
        		locationDetectionView_Navbar_PreviousDummy.fontSize = MD2Float(1.2)
        		locationDetectionView_Navbar_PreviousDummy.color = MD2String("#007AFF")
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_PreviousDummy)
        let wrapper_locationDetectionView_Navbar_PreviousDummy = MD2WidgetWrapper(widget: locationDetectionView_Navbar_PreviousDummy)
        wrapper_locationDetectionView_Navbar_PreviousDummy.isElementDisabled = true
        widgetRegistry.add(wrapper_locationDetectionView_Navbar_PreviousDummy)
        
        
        let locationDetectionView_Navbar_Cancel = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar_Cancel)
        		locationDetectionView_Navbar_Cancel.value = MD2String("Cancel")
        		locationDetectionView_Navbar_Cancel.width = Float(1/100 * 33)
        		locationDetectionView_Navbar_Cancel.fontSize = MD2Float(1.2)
        		locationDetectionView_Navbar_Cancel.color = MD2String("#007AFF")
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_Cancel)
        let wrapper_locationDetectionView_Navbar_Cancel = MD2WidgetWrapper(widget: locationDetectionView_Navbar_Cancel)
        wrapper_locationDetectionView_Navbar_Cancel.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_Navbar_Cancel)
        
        
        let locationDetectionView_Navbar_Next = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationDetectionView_Navbar_Next)
        		locationDetectionView_Navbar_Next.value = MD2String("Next")
        		locationDetectionView_Navbar_Next.width = Float(1/100 * 33)
        		locationDetectionView_Navbar_Next.fontSize = MD2Float(1.2)
        		locationDetectionView_Navbar_Next.color = MD2String("#007AFF")
        		locationDetectionView_Navbar.addWidget(locationDetectionView_Navbar_Next)
        let wrapper_locationDetectionView_Navbar_Next = MD2WidgetWrapper(widget: locationDetectionView_Navbar_Next)
        wrapper_locationDetectionView_Navbar_Next.isElementDisabled = false
        widgetRegistry.add(wrapper_locationDetectionView_Navbar_Next)
        
        
        
        
        
        
        // View: LocationVerifyView
        let locationVerifyView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView)
        locationVerifyView.columns = MD2Integer(1)
        locationVerifyView.rows = MD2Integer(5)
        locationVerifyView.width = Float(1/100 * 100)
        let locationVerifyView_TitleLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_TitleLbl)
        		locationVerifyView_TitleLbl.value = MD2String("Verify your Location")
        		locationVerifyView_TitleLbl.fontSize = MD2Float(2.5)
        		locationVerifyView_TitleLbl.color = MD2String("#000000")
        		locationVerifyView_TitleLbl.textStyle = MD2WidgetTextStyle.BoldItalic
        		locationVerifyView.addWidget(locationVerifyView_TitleLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_TitleLbl))
        
        
        let locationVerifyView_AddressView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView)
        locationVerifyView_AddressView.columns = MD2Integer(4)
        locationVerifyView_AddressView.rows = MD2Integer(3)
        locationVerifyView_AddressView.width = Float(1/100 * 100)
        locationVerifyView.addWidget(locationVerifyView_AddressView)
        let locationVerifyView_AddressView_streetLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_streetLbl)
        		locationVerifyView_AddressView_streetLbl.value = MD2String("Street")
        		locationVerifyView_AddressView_streetLbl.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_streetLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_streetLbl))
        
        
        let locationVerifyView_AddressView_streetValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_streetValue)
        		locationVerifyView_AddressView_streetValue.value = MD2String("")
        		locationVerifyView_AddressView_streetValue.width = Float(1/100 * 25)
        		locationVerifyView_AddressView_streetValue.fontSize = MD2Float(0.0)
        		locationVerifyView_AddressView_streetValue.color = MD2String("#32CD32")
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_streetValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_streetValue))
        
        
        let locationVerifyView_AddressView_streetNoLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_streetNoLbl)
        		locationVerifyView_AddressView_streetNoLbl.value = MD2String("Street Number")
        		locationVerifyView_AddressView_streetNoLbl.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_streetNoLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_streetNoLbl))
        
        
        let locationVerifyView_AddressView_streetNoValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_streetNoValue)
        		locationVerifyView_AddressView_streetNoValue.value = MD2String("")
        		locationVerifyView_AddressView_streetNoValue.width = Float(1/100 * 25)
        		locationVerifyView_AddressView_streetNoValue.fontSize = MD2Float(0.0)
        		locationVerifyView_AddressView_streetNoValue.color = MD2String("#32CD32")
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_streetNoValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_streetNoValue))
        
        
        let locationVerifyView_AddressView_zipLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_zipLbl)
        		locationVerifyView_AddressView_zipLbl.value = MD2String("Zip Code")
        		locationVerifyView_AddressView_zipLbl.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_zipLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_zipLbl))
        
        
        let locationVerifyView_AddressView_zipValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_zipValue)
        		locationVerifyView_AddressView_zipValue.value = MD2String("")
        		locationVerifyView_AddressView_zipValue.width = Float(1/100 * 25)
        		locationVerifyView_AddressView_zipValue.fontSize = MD2Float(0.0)
        		locationVerifyView_AddressView_zipValue.color = MD2String("#32CD32")
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_zipValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_zipValue))
        
        
        let locationVerifyView_AddressView_cityLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_cityLbl)
        		locationVerifyView_AddressView_cityLbl.value = MD2String("City")
        		locationVerifyView_AddressView_cityLbl.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_cityLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_cityLbl))
        
        
        let locationVerifyView_AddressView_cityValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_cityValue)
        		locationVerifyView_AddressView_cityValue.value = MD2String("")
        		locationVerifyView_AddressView_cityValue.width = Float(1/100 * 25)
        		locationVerifyView_AddressView_cityValue.fontSize = MD2Float(0.0)
        		locationVerifyView_AddressView_cityValue.color = MD2String("#32CD32")
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_cityValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_cityValue))
        
        
        let locationVerifyView_AddressView_Spacer781764 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationVerifyView_AddressView_Spacer781764.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_Spacer781764)
        
        
        let locationVerifyView_AddressView_Spacer449526 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationVerifyView_AddressView_Spacer449526.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_Spacer449526)
        
        
        let locationVerifyView_AddressView_countryLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_countryLbl)
        		locationVerifyView_AddressView_countryLbl.value = MD2String("Country")
        		locationVerifyView_AddressView_countryLbl.width = Float(1/100 * 25)
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_countryLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_countryLbl))
        
        
        let locationVerifyView_AddressView_countryValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_AddressView_countryValue)
        		locationVerifyView_AddressView_countryValue.value = MD2String("")
        		locationVerifyView_AddressView_countryValue.width = Float(1/100 * 25)
        		locationVerifyView_AddressView_countryValue.fontSize = MD2Float(0.0)
        		locationVerifyView_AddressView_countryValue.color = MD2String("#32CD32")
        		locationVerifyView_AddressView.addWidget(locationVerifyView_AddressView_countryValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_AddressView_countryValue))
        
        
        
        
        let locationVerifyView_LatLoView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView)
        locationVerifyView_LatLoView.columns = MD2Integer(4)
        locationVerifyView_LatLoView.rows = MD2Integer(1)
        locationVerifyView_LatLoView.width = Float(1/100 * 100)
        locationVerifyView.addWidget(locationVerifyView_LatLoView)
        let locationVerifyView_LatLoView_latLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView_latLbl)
        		locationVerifyView_LatLoView_latLbl.value = MD2String("Latitude")
        		locationVerifyView_LatLoView_latLbl.width = Float(1/100 * 25)
        		locationVerifyView_LatLoView.addWidget(locationVerifyView_LatLoView_latLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_LatLoView_latLbl))
        
        
        let locationVerifyView_LatLoView_latitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView_latitudeValue)
        		locationVerifyView_LatLoView_latitudeValue.value = MD2String("")
        		locationVerifyView_LatLoView_latitudeValue.width = Float(1/100 * 25)
        		locationVerifyView_LatLoView_latitudeValue.fontSize = MD2Float(0.0)
        		locationVerifyView_LatLoView_latitudeValue.color = MD2String("#32CD32")
        		locationVerifyView_LatLoView.addWidget(locationVerifyView_LatLoView_latitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_LatLoView_latitudeValue))
        
        
        let locationVerifyView_LatLoView_longLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView_longLbl)
        		locationVerifyView_LatLoView_longLbl.value = MD2String("Longitude")
        		locationVerifyView_LatLoView_longLbl.width = Float(1/100 * 25)
        		locationVerifyView_LatLoView.addWidget(locationVerifyView_LatLoView_longLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_LatLoView_longLbl))
        
        
        let locationVerifyView_LatLoView_longitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_LatLoView_longitudeValue)
        		locationVerifyView_LatLoView_longitudeValue.value = MD2String("")
        		locationVerifyView_LatLoView_longitudeValue.width = Float(1/100 * 25)
        		locationVerifyView_LatLoView_longitudeValue.fontSize = MD2Float(0.0)
        		locationVerifyView_LatLoView_longitudeValue.color = MD2String("#32CD32")
        		locationVerifyView_LatLoView.addWidget(locationVerifyView_LatLoView_longitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: locationVerifyView_LatLoView_longitudeValue))
        
        
        
        
        let locationVerifyView_Spacer437100 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationVerifyView.addWidget(locationVerifyView_Spacer437100)
        
        
        let locationVerifyView_Buttons = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView_Buttons)
        locationVerifyView_Buttons.columns = MD2Integer(3)
        locationVerifyView_Buttons.rows = MD2Integer(1)
        locationVerifyView_Buttons.width = Float(1/100 * 100)
        locationVerifyView.addWidget(locationVerifyView_Buttons)
        let locationVerifyView_Buttons_Previous = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Buttons_Previous)
        		locationVerifyView_Buttons_Previous.value = MD2String("Previous")
        		locationVerifyView_Buttons_Previous.width = Float(1/100 * 34)
        		locationVerifyView_Buttons_Previous.fontSize = MD2Float(1.2)
        		locationVerifyView_Buttons_Previous.color = MD2String("#007AFF")
        		locationVerifyView_Buttons.addWidget(locationVerifyView_Buttons_Previous)
        let wrapper_locationVerifyView_Buttons_Previous = MD2WidgetWrapper(widget: locationVerifyView_Buttons_Previous)
        wrapper_locationVerifyView_Buttons_Previous.isElementDisabled = false
        widgetRegistry.add(wrapper_locationVerifyView_Buttons_Previous)
        
        
        let locationVerifyView_Buttons_Cancel2 = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Buttons_Cancel2)
        		locationVerifyView_Buttons_Cancel2.value = MD2String("Cancel")
        		locationVerifyView_Buttons_Cancel2.width = Float(1/100 * 33)
        		locationVerifyView_Buttons_Cancel2.fontSize = MD2Float(1.2)
        		locationVerifyView_Buttons_Cancel2.color = MD2String("#007AFF")
        		locationVerifyView_Buttons.addWidget(locationVerifyView_Buttons_Cancel2)
        let wrapper_locationVerifyView_Buttons_Cancel2 = MD2WidgetWrapper(widget: locationVerifyView_Buttons_Cancel2)
        wrapper_locationVerifyView_Buttons_Cancel2.isElementDisabled = false
        widgetRegistry.add(wrapper_locationVerifyView_Buttons_Cancel2)
        
        
        let locationVerifyView_Buttons_Next2 = MD2LabelWidget(widgetId: MD2WidgetMapping.LocationVerifyView_Buttons_Next2)
        		locationVerifyView_Buttons_Next2.value = MD2String("Next")
        		locationVerifyView_Buttons_Next2.width = Float(1/100 * 33)
        		locationVerifyView_Buttons_Next2.fontSize = MD2Float(1.2)
        		locationVerifyView_Buttons_Next2.color = MD2String("#007AFF")
        		locationVerifyView_Buttons.addWidget(locationVerifyView_Buttons_Next2)
        let wrapper_locationVerifyView_Buttons_Next2 = MD2WidgetWrapper(widget: locationVerifyView_Buttons_Next2)
        wrapper_locationVerifyView_Buttons_Next2.isElementDisabled = false
        widgetRegistry.add(wrapper_locationVerifyView_Buttons_Next2)
        
        
        
        
        
        
        
    	/***************************************************
		 * 
		 * Initialize content providers
		 * 
		 ***************************************************/
		MD2ContentProviderRegistry.instance.addContentProvider("ComplaintProvider", 
			provider: MD2CP_ComplaintProvider(
				content: MD2Entity_Complaint()))
		MD2ContentProviderRegistry.instance.addContentProvider("AddressProvider", 
			provider: MD2CP_AddressProvider(
				content: MD2Entity_Address()))
        
        /***************************************************
		 * 
		 * Initialize view manager and all views
		 * 
		 ***************************************************/
        var viewManager = MD2ViewManager.instance
        viewManager.window = window
        
        viewManager.setupView("LocationDetectionView", view: locationDetectionView)
        viewManager.setupView("LocationVerifyView", view: locationVerifyView)
        
        /***************************************************
		 * 
		 * Initialize process chains and workflowElements
		 * 
		 ***************************************************/
        /*
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
        */
        /***************************************************
		 * 
		 * Start initial workflow of the app
		 * 
		 ***************************************************/
        //SetWorkflowElementAction(actionSignature: "InitialAction", workflowElement: wfeLocationDetection).execute()
        
		println("[Controller] Startup completed")
    }
}
