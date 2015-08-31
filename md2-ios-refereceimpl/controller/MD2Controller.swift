//
//  MD2Controller.swift
//
//  Generated code by class 'IOSController' on 30.08.2015
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
        // View: SubmitComplaintView
        let submitComplaintView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.SubmitComplaintView)
        submitComplaintView.columns = MD2Integer(1)
        submitComplaintView.rows = MD2Integer(7)
        submitComplaintView.width = Float(1/100 * 100)
        let titleLbl2 = MD2LabelWidget(widgetId: MD2WidgetMapping.TitleLbl2)
        		titleLbl2.value = MD2String("Submit Complaint")
        		titleLbl2.fontSize = MD2Float(2.5)
        		titleLbl2.color = MD2String("#000000")
        		titleLbl2.textStyle = MD2WidgetTextStyle.BoldItalic
        		submitComplaintView.addWidget(titleLbl2)
        widgetRegistry.add(MD2WidgetWrapper(widget: titleLbl2))
        
        
        let addressView1 = MD2GridLayoutPane(widgetId: MD2WidgetMapping.AddressView1)
        addressView1.columns = MD2Integer(4)
        addressView1.rows = MD2Integer(3)
        addressView1.width = Float(1/100 * 100)
        submitComplaintView.addWidget(addressView1)
        let streetLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetLbl1)
        		streetLbl1.value = MD2String("Street")
        		streetLbl1.width = Float(1/100 * 25)
        		addressView1.addWidget(streetLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetLbl1))
        
        
        let streetValue2 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetValue2)
        		streetValue2.value = MD2String("")
        		streetValue2.width = Float(1/100 * 25)
        		streetValue2.fontSize = MD2Float(0.0)
        		streetValue2.color = MD2String("#32CD32")
        		addressView1.addWidget(streetValue2)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetValue2))
        
        
        let streetNoLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetNoLbl1)
        		streetNoLbl1.value = MD2String("Street Number")
        		streetNoLbl1.width = Float(1/100 * 25)
        		addressView1.addWidget(streetNoLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetNoLbl1))
        
        
        let streetNoValue2 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetNoValue2)
        		streetNoValue2.value = MD2String("")
        		streetNoValue2.width = Float(1/100 * 25)
        		streetNoValue2.fontSize = MD2Float(0.0)
        		streetNoValue2.color = MD2String("#32CD32")
        		addressView1.addWidget(streetNoValue2)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetNoValue2))
        
        
        let zipLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.ZipLbl1)
        		zipLbl1.value = MD2String("Zip Code")
        		zipLbl1.width = Float(1/100 * 25)
        		addressView1.addWidget(zipLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: zipLbl1))
        
        
        let zipValue2 = MD2LabelWidget(widgetId: MD2WidgetMapping.ZipValue2)
        		zipValue2.value = MD2String("")
        		zipValue2.width = Float(1/100 * 25)
        		zipValue2.fontSize = MD2Float(0.0)
        		zipValue2.color = MD2String("#32CD32")
        		addressView1.addWidget(zipValue2)
        widgetRegistry.add(MD2WidgetWrapper(widget: zipValue2))
        
        
        let cityLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.CityLbl1)
        		cityLbl1.value = MD2String("City")
        		cityLbl1.width = Float(1/100 * 25)
        		addressView1.addWidget(cityLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: cityLbl1))
        
        
        let cityValue2 = MD2LabelWidget(widgetId: MD2WidgetMapping.CityValue2)
        		cityValue2.value = MD2String("")
        		cityValue2.width = Float(1/100 * 25)
        		cityValue2.fontSize = MD2Float(0.0)
        		cityValue2.color = MD2String("#32CD32")
        		addressView1.addWidget(cityValue2)
        widgetRegistry.add(MD2WidgetWrapper(widget: cityValue2))
        
        
        let addressView1_Spacer588130 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		addressView1_Spacer588130.width = Float(1/100 * 25)
        		addressView1.addWidget(addressView1_Spacer588130)
        
        
        let addressView1_Spacer89406 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		addressView1_Spacer89406.width = Float(1/100 * 25)
        		addressView1.addWidget(addressView1_Spacer89406)
        
        
        let countryLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.CountryLbl1)
        		countryLbl1.value = MD2String("Country")
        		countryLbl1.width = Float(1/100 * 25)
        		addressView1.addWidget(countryLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: countryLbl1))
        
        
        let countryValue2 = MD2LabelWidget(widgetId: MD2WidgetMapping.CountryValue2)
        		countryValue2.value = MD2String("")
        		countryValue2.width = Float(1/100 * 25)
        		countryValue2.fontSize = MD2Float(0.0)
        		countryValue2.color = MD2String("#32CD32")
        		addressView1.addWidget(countryValue2)
        widgetRegistry.add(MD2WidgetWrapper(widget: countryValue2))
        
        
        
        
        let submitComplaintView_Spacer235312 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		submitComplaintView.addWidget(submitComplaintView_Spacer235312)
        
        
        let descriptionLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.DescriptionLbl)
        		descriptionLbl.value = MD2String("Additional Description:")
        		submitComplaintView.addWidget(descriptionLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: descriptionLbl))
        
        
        let descriptionTxt = MD2TextFieldWidget(widgetId: MD2WidgetMapping.DescriptionTxt)
        		descriptionTxt.value = MD2String("")
        descriptionTxt.tooltip = MD2String("")
        		submitComplaintView.addWidget(descriptionTxt)
        let wrapper_descriptionTxt = MD2WidgetWrapper(widget: descriptionTxt)
        wrapper_descriptionTxt.isElementDisabled = false
        widgetRegistry.add(wrapper_descriptionTxt)
        
        
        let cancel3 = MD2ButtonWidget(widgetId: MD2WidgetMapping.Cancel3)
        		cancel3.value = MD2String("Cancel")
        		cancel3.fontSize = MD2Float(1.2)
        		cancel3.color = MD2String("#007AFF")
        		submitComplaintView.addWidget(cancel3)
        let wrapper_cancel3 = MD2WidgetWrapper(widget: cancel3)
        wrapper_cancel3.isElementDisabled = false
        widgetRegistry.add(wrapper_cancel3)
        
        
        let submitComplaint = MD2ButtonWidget(widgetId: MD2WidgetMapping.SubmitComplaint)
        		submitComplaint.value = MD2String("Submit complaint")
        		submitComplaint.fontSize = MD2Float(1.2)
        		submitComplaint.color = MD2String("#007AFF")
        		submitComplaintView.addWidget(submitComplaint)
        let wrapper_submitComplaint = MD2WidgetWrapper(widget: submitComplaint)
        wrapper_submitComplaint.isElementDisabled = false
        widgetRegistry.add(wrapper_submitComplaint)
        
        
        
        
        // View: LocationDetectionView
        let locationDetectionView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationDetectionView)
        locationDetectionView.columns = MD2Integer(1)
        locationDetectionView.rows = MD2Integer(5)
        locationDetectionView.width = Float(1/100 * 100)
        let titleLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.TitleLbl)
        		titleLbl.value = MD2String("Enter your location")
        		titleLbl.fontSize = MD2Float(2.5)
        		titleLbl.color = MD2String("#000000")
        		titleLbl.textStyle = MD2WidgetTextStyle.BoldItalic
        		locationDetectionView.addWidget(titleLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: titleLbl))
        
        
        let locationDetectionView_Spacer796832 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView.addWidget(locationDetectionView_Spacer796832)
        
        
        let addressData = MD2GridLayoutPane(widgetId: MD2WidgetMapping.AddressData)
        addressData.columns = MD2Integer(1)
        addressData.rows = MD2Integer(8)
        addressData.width = Float(1/100 * 100)
        locationDetectionView.addWidget(addressData)
        let __ContainerstreetValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainerstreetValue)
        __ContainerstreetValue.columns = MD2Integer(2)
        __ContainerstreetValue.rows = MD2Integer(1)
        __ContainerstreetValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainerstreetValue)
        let __LabelstreetValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabelstreetValue)
        		__LabelstreetValue.value = MD2String("Street: ")
        		__LabelstreetValue.width = Float(1/100 * 40)
        		__ContainerstreetValue.addWidget(__LabelstreetValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabelstreetValue))
        
        
        let streetValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.StreetValue)
        		streetValue.value = MD2String("")
        		streetValue.width = Float(1/100 * 50)
        streetValue.tooltip = MD2String("Please insert the name of your street.")
        		__ContainerstreetValue.addWidget(streetValue)
        let wrapper_streetValue = MD2WidgetWrapper(widget: streetValue)
        wrapper_streetValue.isElementDisabled = false
        widgetRegistry.add(wrapper_streetValue)
        
        
        
        
        let __ContainerstreetNoValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainerstreetNoValue)
        __ContainerstreetNoValue.columns = MD2Integer(2)
        __ContainerstreetNoValue.rows = MD2Integer(1)
        __ContainerstreetNoValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainerstreetNoValue)
        let __LabelstreetNoValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabelstreetNoValue)
        		__LabelstreetNoValue.value = MD2String("Street Number:")
        		__LabelstreetNoValue.width = Float(1/100 * 40)
        		__ContainerstreetNoValue.addWidget(__LabelstreetNoValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabelstreetNoValue))
        
        
        let streetNoValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.StreetNoValue)
        		streetNoValue.value = MD2String("")
        		streetNoValue.width = Float(1/100 * 50)
        streetNoValue.tooltip = MD2String("Please insert your street-number.")
        		__ContainerstreetNoValue.addWidget(streetNoValue)
        let wrapper_streetNoValue = MD2WidgetWrapper(widget: streetNoValue)
        wrapper_streetNoValue.isElementDisabled = false
        widgetRegistry.add(wrapper_streetNoValue)
        
        
        
        
        let __ContainerzipValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainerzipValue)
        __ContainerzipValue.columns = MD2Integer(2)
        __ContainerzipValue.rows = MD2Integer(1)
        __ContainerzipValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainerzipValue)
        let __LabelzipValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabelzipValue)
        		__LabelzipValue.value = MD2String("ZipCode:")
        		__LabelzipValue.width = Float(1/100 * 40)
        		__ContainerzipValue.addWidget(__LabelzipValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabelzipValue))
        
        
        let zipValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.ZipValue)
        		zipValue.value = MD2String("")
        		zipValue.width = Float(1/100 * 50)
        zipValue.tooltip = MD2String("Please insert the zip-code of your location.")
        		__ContainerzipValue.addWidget(zipValue)
        let wrapper_zipValue = MD2WidgetWrapper(widget: zipValue)
        wrapper_zipValue.isElementDisabled = false
        widgetRegistry.add(wrapper_zipValue)
        
        
        
        
        let __ContainercityValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainercityValue)
        __ContainercityValue.columns = MD2Integer(2)
        __ContainercityValue.rows = MD2Integer(1)
        __ContainercityValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainercityValue)
        let __LabelcityValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabelcityValue)
        		__LabelcityValue.value = MD2String("City:")
        		__LabelcityValue.width = Float(1/100 * 40)
        		__ContainercityValue.addWidget(__LabelcityValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabelcityValue))
        
        
        let cityValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.CityValue)
        		cityValue.value = MD2String("")
        		cityValue.width = Float(1/100 * 50)
        cityValue.tooltip = MD2String("Please insert your city.")
        		__ContainercityValue.addWidget(cityValue)
        let wrapper_cityValue = MD2WidgetWrapper(widget: cityValue)
        wrapper_cityValue.isElementDisabled = false
        widgetRegistry.add(wrapper_cityValue)
        
        
        
        
        let __ContainercountryValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainercountryValue)
        __ContainercountryValue.columns = MD2Integer(2)
        __ContainercountryValue.rows = MD2Integer(1)
        __ContainercountryValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainercountryValue)
        let __LabelcountryValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabelcountryValue)
        		__LabelcountryValue.value = MD2String("Country: ")
        		__LabelcountryValue.width = Float(1/100 * 40)
        		__ContainercountryValue.addWidget(__LabelcountryValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabelcountryValue))
        
        
        let countryValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.CountryValue)
        		countryValue.value = MD2String("")
        		countryValue.width = Float(1/100 * 50)
        countryValue.tooltip = MD2String("Please insert the name of your country.")
        		__ContainercountryValue.addWidget(countryValue)
        let wrapper_countryValue = MD2WidgetWrapper(widget: countryValue)
        wrapper_countryValue.isElementDisabled = false
        widgetRegistry.add(wrapper_countryValue)
        
        
        
        
        let addressData_Spacer46839 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		addressData.addWidget(addressData_Spacer46839)
        
        
        let __ContainerlatitudeValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainerlatitudeValue)
        __ContainerlatitudeValue.columns = MD2Integer(2)
        __ContainerlatitudeValue.rows = MD2Integer(1)
        __ContainerlatitudeValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainerlatitudeValue)
        let __LabellatitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabellatitudeValue)
        		__LabellatitudeValue.value = MD2String("Latitude:")
        		__LabellatitudeValue.width = Float(1/100 * 40)
        		__ContainerlatitudeValue.addWidget(__LabellatitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabellatitudeValue))
        
        
        let latitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LatitudeValue)
        		latitudeValue.value = MD2Float(Float(0.0))
        		latitudeValue.width = Float(1/100 * 50)
        latitudeValue.tooltip = MD2String("To get the value for latitude, use the My Location function down below.")
        		__ContainerlatitudeValue.addWidget(latitudeValue)
        let wrapper_latitudeValue = MD2WidgetWrapper(widget: latitudeValue)
        wrapper_latitudeValue.isElementDisabled = true
        wrapper_latitudeValue.addValidator(MD2IsNumberValidator(identifier: MD2String("latitudeValue_auto_number"), 
        		message: nil))
        wrapper_latitudeValue.addValidator(MD2StringRangeValidator(identifier: MD2String("latitudeValue_auto_places"), 
        	message: nil, 
        	minLength: MD2Integer(0), 
        	maxLength: MD2Integer(6)))
        widgetRegistry.add(wrapper_latitudeValue)
        
        
        
        
        let __ContainerlongitudeValue = MD2GridLayoutPane(widgetId: MD2WidgetMapping.__ContainerlongitudeValue)
        __ContainerlongitudeValue.columns = MD2Integer(2)
        __ContainerlongitudeValue.rows = MD2Integer(1)
        __ContainerlongitudeValue.width = Float(1/100 * 100)
        addressData.addWidget(__ContainerlongitudeValue)
        let __LabellongitudeValue = MD2LabelWidget(widgetId: MD2WidgetMapping.__LabellongitudeValue)
        		__LabellongitudeValue.value = MD2String("Longitude:")
        		__LabellongitudeValue.width = Float(1/100 * 40)
        		__ContainerlongitudeValue.addWidget(__LabellongitudeValue)
        widgetRegistry.add(MD2WidgetWrapper(widget: __LabellongitudeValue))
        
        
        let longitudeValue = MD2TextFieldWidget(widgetId: MD2WidgetMapping.LongitudeValue)
        		longitudeValue.value = MD2Float(Float(0.0))
        		longitudeValue.width = Float(1/100 * 50)
        longitudeValue.tooltip = MD2String("To get the value for longitude, use the My Location function down below.")
        		__ContainerlongitudeValue.addWidget(longitudeValue)
        let wrapper_longitudeValue = MD2WidgetWrapper(widget: longitudeValue)
        wrapper_longitudeValue.isElementDisabled = true
        wrapper_longitudeValue.addValidator(MD2IsNumberValidator(identifier: MD2String("longitudeValue_auto_number"), 
        		message: nil))
        wrapper_longitudeValue.addValidator(MD2StringRangeValidator(identifier: MD2String("longitudeValue_auto_places"), 
        	message: nil, 
        	minLength: MD2Integer(0), 
        	maxLength: MD2Integer(6)))
        widgetRegistry.add(wrapper_longitudeValue)
        
        
        
        
        
        
        let locationDetectionView_Spacer47937 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationDetectionView.addWidget(locationDetectionView_Spacer47937)
        
        
        let navbar = MD2GridLayoutPane(widgetId: MD2WidgetMapping.Navbar)
        navbar.columns = MD2Integer(3)
        navbar.rows = MD2Integer(1)
        navbar.width = Float(1/100 * 100)
        locationDetectionView.addWidget(navbar)
        let previousDummy = MD2ButtonWidget(widgetId: MD2WidgetMapping.PreviousDummy)
        		previousDummy.value = MD2String("Previous")
        		previousDummy.width = Float(1/100 * 34)
        		previousDummy.fontSize = MD2Float(1.2)
        		previousDummy.color = MD2String("#007AFF")
        		navbar.addWidget(previousDummy)
        let wrapper_previousDummy = MD2WidgetWrapper(widget: previousDummy)
        wrapper_previousDummy.isElementDisabled = true
        widgetRegistry.add(wrapper_previousDummy)
        
        
        let cancel = MD2ButtonWidget(widgetId: MD2WidgetMapping.Cancel)
        		cancel.value = MD2String("Cancel")
        		cancel.width = Float(1/100 * 33)
        		cancel.fontSize = MD2Float(1.2)
        		cancel.color = MD2String("#007AFF")
        		navbar.addWidget(cancel)
        let wrapper_cancel = MD2WidgetWrapper(widget: cancel)
        wrapper_cancel.isElementDisabled = false
        widgetRegistry.add(wrapper_cancel)
        
        
        let next = MD2ButtonWidget(widgetId: MD2WidgetMapping.Next)
        		next.value = MD2String("Next")
        		next.width = Float(1/100 * 33)
        		next.fontSize = MD2Float(1.2)
        		next.color = MD2String("#007AFF")
        		navbar.addWidget(next)
        let wrapper_next = MD2WidgetWrapper(widget: next)
        wrapper_next.isElementDisabled = false
        widgetRegistry.add(wrapper_next)
        
        
        
        
        
        
        // View: LocationVerifyView
        let locationVerifyView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LocationVerifyView)
        locationVerifyView.columns = MD2Integer(1)
        locationVerifyView.rows = MD2Integer(5)
        locationVerifyView.width = Float(1/100 * 100)
        let titleLbl1 = MD2LabelWidget(widgetId: MD2WidgetMapping.TitleLbl1)
        		titleLbl1.value = MD2String("Verify your Location")
        		titleLbl1.fontSize = MD2Float(2.5)
        		titleLbl1.color = MD2String("#000000")
        		titleLbl1.textStyle = MD2WidgetTextStyle.BoldItalic
        		locationVerifyView.addWidget(titleLbl1)
        widgetRegistry.add(MD2WidgetWrapper(widget: titleLbl1))
        
        
        let addressView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.AddressView)
        addressView.columns = MD2Integer(4)
        addressView.rows = MD2Integer(3)
        addressView.width = Float(1/100 * 100)
        locationVerifyView.addWidget(addressView)
        let streetLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetLbl)
        		streetLbl.value = MD2String("Street")
        		streetLbl.width = Float(1/100 * 25)
        		addressView.addWidget(streetLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetLbl))
        
        
        let streetValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetValue1)
        		streetValue1.value = MD2String("")
        		streetValue1.width = Float(1/100 * 25)
        		streetValue1.fontSize = MD2Float(0.0)
        		streetValue1.color = MD2String("#32CD32")
        		addressView.addWidget(streetValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetValue1))
        
        
        let streetNoLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetNoLbl)
        		streetNoLbl.value = MD2String("Street Number")
        		streetNoLbl.width = Float(1/100 * 25)
        		addressView.addWidget(streetNoLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetNoLbl))
        
        
        let streetNoValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.StreetNoValue1)
        		streetNoValue1.value = MD2String("")
        		streetNoValue1.width = Float(1/100 * 25)
        		streetNoValue1.fontSize = MD2Float(0.0)
        		streetNoValue1.color = MD2String("#32CD32")
        		addressView.addWidget(streetNoValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: streetNoValue1))
        
        
        let zipLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.ZipLbl)
        		zipLbl.value = MD2String("Zip Code")
        		zipLbl.width = Float(1/100 * 25)
        		addressView.addWidget(zipLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: zipLbl))
        
        
        let zipValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.ZipValue1)
        		zipValue1.value = MD2String("")
        		zipValue1.width = Float(1/100 * 25)
        		zipValue1.fontSize = MD2Float(0.0)
        		zipValue1.color = MD2String("#32CD32")
        		addressView.addWidget(zipValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: zipValue1))
        
        
        let cityLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.CityLbl)
        		cityLbl.value = MD2String("City")
        		cityLbl.width = Float(1/100 * 25)
        		addressView.addWidget(cityLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: cityLbl))
        
        
        let cityValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.CityValue1)
        		cityValue1.value = MD2String("")
        		cityValue1.width = Float(1/100 * 25)
        		cityValue1.fontSize = MD2Float(0.0)
        		cityValue1.color = MD2String("#32CD32")
        		addressView.addWidget(cityValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: cityValue1))
        
        
        let addressView_Spacer921955 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		addressView_Spacer921955.width = Float(1/100 * 25)
        		addressView.addWidget(addressView_Spacer921955)
        
        
        let addressView_Spacer965373 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		addressView_Spacer965373.width = Float(1/100 * 25)
        		addressView.addWidget(addressView_Spacer965373)
        
        
        let countryLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.CountryLbl)
        		countryLbl.value = MD2String("Country")
        		countryLbl.width = Float(1/100 * 25)
        		addressView.addWidget(countryLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: countryLbl))
        
        
        let countryValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.CountryValue1)
        		countryValue1.value = MD2String("")
        		countryValue1.width = Float(1/100 * 25)
        		countryValue1.fontSize = MD2Float(0.0)
        		countryValue1.color = MD2String("#32CD32")
        		addressView.addWidget(countryValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: countryValue1))
        
        
        
        
        let latLoView = MD2GridLayoutPane(widgetId: MD2WidgetMapping.LatLoView)
        latLoView.columns = MD2Integer(4)
        latLoView.rows = MD2Integer(1)
        latLoView.width = Float(1/100 * 100)
        locationVerifyView.addWidget(latLoView)
        let latLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LatLbl)
        		latLbl.value = MD2String("Latitude")
        		latLbl.width = Float(1/100 * 25)
        		latLoView.addWidget(latLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: latLbl))
        
        
        let latitudeValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.LatitudeValue1)
        		latitudeValue1.value = MD2String("")
        		latitudeValue1.width = Float(1/100 * 25)
        		latitudeValue1.fontSize = MD2Float(0.0)
        		latitudeValue1.color = MD2String("#32CD32")
        		latLoView.addWidget(latitudeValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: latitudeValue1))
        
        
        let longLbl = MD2LabelWidget(widgetId: MD2WidgetMapping.LongLbl)
        		longLbl.value = MD2String("Longitude")
        		longLbl.width = Float(1/100 * 25)
        		latLoView.addWidget(longLbl)
        widgetRegistry.add(MD2WidgetWrapper(widget: longLbl))
        
        
        let longitudeValue1 = MD2LabelWidget(widgetId: MD2WidgetMapping.LongitudeValue1)
        		longitudeValue1.value = MD2String("")
        		longitudeValue1.width = Float(1/100 * 25)
        		longitudeValue1.fontSize = MD2Float(0.0)
        		longitudeValue1.color = MD2String("#32CD32")
        		latLoView.addWidget(longitudeValue1)
        widgetRegistry.add(MD2WidgetWrapper(widget: longitudeValue1))
        
        
        
        
        let locationVerifyView_Spacer44761 = MD2SpacerWidget(widgetId: MD2WidgetMapping.Spacer)
        		locationVerifyView.addWidget(locationVerifyView_Spacer44761)
        
        
        let buttons = MD2GridLayoutPane(widgetId: MD2WidgetMapping.Buttons)
        buttons.columns = MD2Integer(3)
        buttons.rows = MD2Integer(1)
        buttons.width = Float(1/100 * 100)
        locationVerifyView.addWidget(buttons)
        let previous = MD2ButtonWidget(widgetId: MD2WidgetMapping.Previous)
        		previous.value = MD2String("Previous")
        		previous.width = Float(1/100 * 34)
        		previous.fontSize = MD2Float(1.2)
        		previous.color = MD2String("#007AFF")
        		buttons.addWidget(previous)
        let wrapper_previous = MD2WidgetWrapper(widget: previous)
        wrapper_previous.isElementDisabled = false
        widgetRegistry.add(wrapper_previous)
        
        
        let cancel2 = MD2ButtonWidget(widgetId: MD2WidgetMapping.Cancel2)
        		cancel2.value = MD2String("Cancel")
        		cancel2.width = Float(1/100 * 33)
        		cancel2.fontSize = MD2Float(1.2)
        		cancel2.color = MD2String("#007AFF")
        		buttons.addWidget(cancel2)
        let wrapper_cancel2 = MD2WidgetWrapper(widget: cancel2)
        wrapper_cancel2.isElementDisabled = false
        widgetRegistry.add(wrapper_cancel2)
        
        
        let next2 = MD2ButtonWidget(widgetId: MD2WidgetMapping.Next2)
        		next2.value = MD2String("Next")
        		next2.width = Float(1/100 * 33)
        		next2.fontSize = MD2Float(1.2)
        		next2.color = MD2String("#007AFF")
        		buttons.addWidget(next2)
        let wrapper_next2 = MD2WidgetWrapper(widget: next2)
        wrapper_next2.isElementDisabled = false
        widgetRegistry.add(wrapper_next2)
        
        
        
        
        
        
        
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
		MD2ContentProviderRegistry.instance.addContentProvider("__returnStepStackProvider", 
			provider: MD2CP___returnStepStackProvider(
			content: MD2Entity___ReturnStepStack()))
		MD2ContentProviderRegistry.instance.addContentProvider("__processChainControllerStateProvider", 
			provider: MD2CP___processChainControllerStateProvider(
			content: MD2Entity___ProcessChainControllerState()))
        
        
        /***************************************************
		 * 
		 * Initialize view manager and all views
		 * 
		 ***************************************************/
        var viewManager = MD2ViewManager.instance
        viewManager.window = window
        
        viewManager.setupView("SubmitComplaintView", view: submitComplaintView)
        viewManager.setupView("LocationDetectionView", view: locationDetectionView)
        viewManager.setupView("LocationVerifyView", view: locationVerifyView)
        
        /***************************************************
		 * 
		 * Initialize workflow elements
		 * 
		 ***************************************************/
        
        let wfeLocationDetection = MD2WorkflowElement(name: "LocationDetection", onInit: MD2CustomAction___LocationDetection_startupAction())
        
        let wfeSubmitEvent = MD2WorkflowElement(name: "SubmitComplaint", onInit: MD2CustomAction___SubmitComplaint_startupAction())
        
        // Register workflowEvents
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.DoneEvent,
            actionType: MD2WorkflowActionType.Start,
            workflowElement: wfeSubmitEvent)
        
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.CancelWorkflowEvent,
            actionType: MD2WorkflowActionType.End,
            workflowElement: wfeLocationDetection)
        
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.SubmitEvent,
            actionType: MD2WorkflowActionType.End,
            workflowElement: wfeSubmitEvent)
        
        MD2WorkflowEventHandler.instance.registerWorkflowElement(
            MD2WorkflowEvent.CancelComplaintWorkflowEvent,
            actionType: MD2WorkflowActionType.End,
            workflowElement: wfeSubmitEvent)
        
        /***************************************************
		 * 
		 * Start initial workflow of the app
		 * 
		 ***************************************************/
		 
		// Execute startup action for first WFE
		// TODO Construct workflow element selection screen
		
        MD2SetWorkflowElementAction(actionSignature: "LocationDetectionAction", workflowElement: wfeLocationDetection).execute()
        
		println("[Controller] Startup completed")
    }
}
