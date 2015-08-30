//
//  WorkflowEvent.swift
//
//  Generated code by class 'IOSWidgetMapping' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

enum MD2WidgetMapping: Int {
    
    // A list of all widget elements used in the application
    // Needed for the identification of widgets and views (widgetId) which can only be of integer type due to platform restrictions on the widget tags
	case NotFound = 0
	case Spacer = 1 // Dummy because spacers have no given name
    case LocationDetectionView = 2
    case LocationDetectionView_TitleLbl = 3
    case LocationDetectionView_AddressData = 4
    case LocationDetectionView_AddressData___ContainerstreetValue = 5
    case LocationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue = 6
    case LocationDetectionView_AddressData___ContainerstreetValue_streetValue = 7
    case LocationDetectionView_AddressData___ContainerstreetValue___TooltipstreetValue = 8
    case LocationDetectionView_AddressData___ContainerstreetNoValue = 9
    case LocationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue = 10
    case LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue = 11
    case LocationDetectionView_AddressData___ContainerstreetNoValue___TooltipstreetNoValue = 12
    case LocationDetectionView_AddressData___ContainerzipValue = 13
    case LocationDetectionView_AddressData___ContainerzipValue___LabelzipValue = 14
    case LocationDetectionView_AddressData___ContainerzipValue_zipValue = 15
    case LocationDetectionView_AddressData___ContainerzipValue___TooltipzipValue = 16
    case LocationDetectionView_AddressData___ContainercityValue = 17
    case LocationDetectionView_AddressData___ContainercityValue___LabelcityValue = 18
    case LocationDetectionView_AddressData___ContainercityValue_cityValue = 19
    case LocationDetectionView_AddressData___ContainercityValue___TooltipcityValue = 20
    case LocationDetectionView_AddressData___ContainercountryValue = 21
    case LocationDetectionView_AddressData___ContainercountryValue___LabelcountryValue = 22
    case LocationDetectionView_AddressData___ContainercountryValue_countryValue = 23
    case LocationDetectionView_AddressData___ContainercountryValue___TooltipcountryValue = 24
    case LocationDetectionView_AddressData___ContainerlatitudeValue = 25
    case LocationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue = 26
    case LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue = 27
    case LocationDetectionView_AddressData___ContainerlatitudeValue___TooltiplatitudeValue = 28
    case LocationDetectionView_AddressData___ContainerlongitudeValue = 29
    case LocationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue = 30
    case LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue = 31
    case LocationDetectionView_AddressData___ContainerlongitudeValue___TooltiplongitudeValue = 32
    case LocationDetectionView_Navbar = 33
    case LocationDetectionView_Navbar_DetectLocationBtn = 34
    case LocationDetectionView_Navbar_PreviousDummy = 35
    case LocationDetectionView_Navbar_Cancel = 36
    case LocationDetectionView_Navbar_Next = 37
    case LocationVerifyView = 38
    case LocationVerifyView_TitleLbl = 39
    case LocationVerifyView_AddressView = 40
    case LocationVerifyView_AddressView_streetLbl = 41
    case LocationVerifyView_AddressView_streetValue = 42
    case LocationVerifyView_AddressView_streetNoLbl = 43
    case LocationVerifyView_AddressView_streetNoValue = 44
    case LocationVerifyView_AddressView_zipLbl = 45
    case LocationVerifyView_AddressView_zipValue = 46
    case LocationVerifyView_AddressView_cityLbl = 47
    case LocationVerifyView_AddressView_cityValue = 48
    case LocationVerifyView_AddressView_countryLbl = 49
    case LocationVerifyView_AddressView_countryValue = 50
    case LocationVerifyView_LatLoView = 51
    case LocationVerifyView_LatLoView_latLbl = 52
    case LocationVerifyView_LatLoView_latitudeValue = 53
    case LocationVerifyView_LatLoView_longLbl = 54
    case LocationVerifyView_LatLoView_longitudeValue = 55
    case LocationVerifyView_Buttons = 56
    case LocationVerifyView_Buttons_Previous = 57
    case LocationVerifyView_Buttons_Cancel2 = 58
    case LocationVerifyView_Buttons_Next2 = 59
    
    // There is currently no introspection into enums
    // Therefore computed property to establish a link of type enum -> string representation
    var description: String {
        switch self {
        case .Spacer: return "Spacer"
        case .LocationDetectionView: return "LocationDetectionView"
        case .LocationDetectionView_TitleLbl: return "LocationDetectionView_TitleLbl"
        case .LocationDetectionView_AddressData: return "LocationDetectionView_AddressData"
        case .LocationDetectionView_AddressData___ContainerstreetValue: return "LocationDetectionView_AddressData___ContainerstreetValue"
        case .LocationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue: return "LocationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue"
        case .LocationDetectionView_AddressData___ContainerstreetValue_streetValue: return "LocationDetectionView_AddressData___ContainerstreetValue_streetValue"
        case .LocationDetectionView_AddressData___ContainerstreetValue___TooltipstreetValue: return "LocationDetectionView_AddressData___ContainerstreetValue___TooltipstreetValue"
        case .LocationDetectionView_AddressData___ContainerstreetNoValue: return "LocationDetectionView_AddressData___ContainerstreetNoValue"
        case .LocationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue: return "LocationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue"
        case .LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue: return "LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue"
        case .LocationDetectionView_AddressData___ContainerstreetNoValue___TooltipstreetNoValue: return "LocationDetectionView_AddressData___ContainerstreetNoValue___TooltipstreetNoValue"
        case .LocationDetectionView_AddressData___ContainerzipValue: return "LocationDetectionView_AddressData___ContainerzipValue"
        case .LocationDetectionView_AddressData___ContainerzipValue___LabelzipValue: return "LocationDetectionView_AddressData___ContainerzipValue___LabelzipValue"
        case .LocationDetectionView_AddressData___ContainerzipValue_zipValue: return "LocationDetectionView_AddressData___ContainerzipValue_zipValue"
        case .LocationDetectionView_AddressData___ContainerzipValue___TooltipzipValue: return "LocationDetectionView_AddressData___ContainerzipValue___TooltipzipValue"
        case .LocationDetectionView_AddressData___ContainercityValue: return "LocationDetectionView_AddressData___ContainercityValue"
        case .LocationDetectionView_AddressData___ContainercityValue___LabelcityValue: return "LocationDetectionView_AddressData___ContainercityValue___LabelcityValue"
        case .LocationDetectionView_AddressData___ContainercityValue_cityValue: return "LocationDetectionView_AddressData___ContainercityValue_cityValue"
        case .LocationDetectionView_AddressData___ContainercityValue___TooltipcityValue: return "LocationDetectionView_AddressData___ContainercityValue___TooltipcityValue"
        case .LocationDetectionView_AddressData___ContainercountryValue: return "LocationDetectionView_AddressData___ContainercountryValue"
        case .LocationDetectionView_AddressData___ContainercountryValue___LabelcountryValue: return "LocationDetectionView_AddressData___ContainercountryValue___LabelcountryValue"
        case .LocationDetectionView_AddressData___ContainercountryValue_countryValue: return "LocationDetectionView_AddressData___ContainercountryValue_countryValue"
        case .LocationDetectionView_AddressData___ContainercountryValue___TooltipcountryValue: return "LocationDetectionView_AddressData___ContainercountryValue___TooltipcountryValue"
        case .LocationDetectionView_AddressData___ContainerlatitudeValue: return "LocationDetectionView_AddressData___ContainerlatitudeValue"
        case .LocationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue: return "LocationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue"
        case .LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue: return "LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue"
        case .LocationDetectionView_AddressData___ContainerlatitudeValue___TooltiplatitudeValue: return "LocationDetectionView_AddressData___ContainerlatitudeValue___TooltiplatitudeValue"
        case .LocationDetectionView_AddressData___ContainerlongitudeValue: return "LocationDetectionView_AddressData___ContainerlongitudeValue"
        case .LocationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue: return "LocationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue"
        case .LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue: return "LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue"
        case .LocationDetectionView_AddressData___ContainerlongitudeValue___TooltiplongitudeValue: return "LocationDetectionView_AddressData___ContainerlongitudeValue___TooltiplongitudeValue"
        case .LocationDetectionView_Navbar: return "LocationDetectionView_Navbar"
        case .LocationDetectionView_Navbar_DetectLocationBtn: return "LocationDetectionView_Navbar_DetectLocationBtn"
        case .LocationDetectionView_Navbar_PreviousDummy: return "LocationDetectionView_Navbar_PreviousDummy"
        case .LocationDetectionView_Navbar_Cancel: return "LocationDetectionView_Navbar_Cancel"
        case .LocationDetectionView_Navbar_Next: return "LocationDetectionView_Navbar_Next"
        case .LocationVerifyView: return "LocationVerifyView"
        case .LocationVerifyView_TitleLbl: return "LocationVerifyView_TitleLbl"
        case .LocationVerifyView_AddressView: return "LocationVerifyView_AddressView"
        case .LocationVerifyView_AddressView_streetLbl: return "LocationVerifyView_AddressView_streetLbl"
        case .LocationVerifyView_AddressView_streetValue: return "LocationVerifyView_AddressView_streetValue"
        case .LocationVerifyView_AddressView_streetNoLbl: return "LocationVerifyView_AddressView_streetNoLbl"
        case .LocationVerifyView_AddressView_streetNoValue: return "LocationVerifyView_AddressView_streetNoValue"
        case .LocationVerifyView_AddressView_zipLbl: return "LocationVerifyView_AddressView_zipLbl"
        case .LocationVerifyView_AddressView_zipValue: return "LocationVerifyView_AddressView_zipValue"
        case .LocationVerifyView_AddressView_cityLbl: return "LocationVerifyView_AddressView_cityLbl"
        case .LocationVerifyView_AddressView_cityValue: return "LocationVerifyView_AddressView_cityValue"
        case .LocationVerifyView_AddressView_countryLbl: return "LocationVerifyView_AddressView_countryLbl"
        case .LocationVerifyView_AddressView_countryValue: return "LocationVerifyView_AddressView_countryValue"
        case .LocationVerifyView_LatLoView: return "LocationVerifyView_LatLoView"
        case .LocationVerifyView_LatLoView_latLbl: return "LocationVerifyView_LatLoView_latLbl"
        case .LocationVerifyView_LatLoView_latitudeValue: return "LocationVerifyView_LatLoView_latitudeValue"
        case .LocationVerifyView_LatLoView_longLbl: return "LocationVerifyView_LatLoView_longLbl"
        case .LocationVerifyView_LatLoView_longitudeValue: return "LocationVerifyView_LatLoView_longitudeValue"
        case .LocationVerifyView_Buttons: return "LocationVerifyView_Buttons"
        case .LocationVerifyView_Buttons_Previous: return "LocationVerifyView_Buttons_Previous"
        case .LocationVerifyView_Buttons_Cancel2: return "LocationVerifyView_Buttons_Cancel2"
        case .LocationVerifyView_Buttons_Next2: return "LocationVerifyView_Buttons_Next2"
    	default: return "NotFound"
        }
    }
    
    // There is currently no introspection into enums
    // Therefore static method to establish a backward link of type raw int value -> enum
    static func fromRawValue(value: Int) -> MD2WidgetMapping {
        switch(value){
        case 1: return .Spacer
    	case 2: return .LocationDetectionView
    	case 3: return .LocationDetectionView_TitleLbl
    	case 4: return .LocationDetectionView_AddressData
    	case 5: return .LocationDetectionView_AddressData___ContainerstreetValue
    	case 6: return .LocationDetectionView_AddressData___ContainerstreetValue___LabelstreetValue
    	case 7: return .LocationDetectionView_AddressData___ContainerstreetValue_streetValue
    	case 8: return .LocationDetectionView_AddressData___ContainerstreetValue___TooltipstreetValue
    	case 9: return .LocationDetectionView_AddressData___ContainerstreetNoValue
    	case 10: return .LocationDetectionView_AddressData___ContainerstreetNoValue___LabelstreetNoValue
    	case 11: return .LocationDetectionView_AddressData___ContainerstreetNoValue_streetNoValue
    	case 12: return .LocationDetectionView_AddressData___ContainerstreetNoValue___TooltipstreetNoValue
    	case 13: return .LocationDetectionView_AddressData___ContainerzipValue
    	case 14: return .LocationDetectionView_AddressData___ContainerzipValue___LabelzipValue
    	case 15: return .LocationDetectionView_AddressData___ContainerzipValue_zipValue
    	case 16: return .LocationDetectionView_AddressData___ContainerzipValue___TooltipzipValue
    	case 17: return .LocationDetectionView_AddressData___ContainercityValue
    	case 18: return .LocationDetectionView_AddressData___ContainercityValue___LabelcityValue
    	case 19: return .LocationDetectionView_AddressData___ContainercityValue_cityValue
    	case 20: return .LocationDetectionView_AddressData___ContainercityValue___TooltipcityValue
    	case 21: return .LocationDetectionView_AddressData___ContainercountryValue
    	case 22: return .LocationDetectionView_AddressData___ContainercountryValue___LabelcountryValue
    	case 23: return .LocationDetectionView_AddressData___ContainercountryValue_countryValue
    	case 24: return .LocationDetectionView_AddressData___ContainercountryValue___TooltipcountryValue
    	case 25: return .LocationDetectionView_AddressData___ContainerlatitudeValue
    	case 26: return .LocationDetectionView_AddressData___ContainerlatitudeValue___LabellatitudeValue
    	case 27: return .LocationDetectionView_AddressData___ContainerlatitudeValue_latitudeValue
    	case 28: return .LocationDetectionView_AddressData___ContainerlatitudeValue___TooltiplatitudeValue
    	case 29: return .LocationDetectionView_AddressData___ContainerlongitudeValue
    	case 30: return .LocationDetectionView_AddressData___ContainerlongitudeValue___LabellongitudeValue
    	case 31: return .LocationDetectionView_AddressData___ContainerlongitudeValue_longitudeValue
    	case 32: return .LocationDetectionView_AddressData___ContainerlongitudeValue___TooltiplongitudeValue
    	case 33: return .LocationDetectionView_Navbar
    	case 34: return .LocationDetectionView_Navbar_DetectLocationBtn
    	case 35: return .LocationDetectionView_Navbar_PreviousDummy
    	case 36: return .LocationDetectionView_Navbar_Cancel
    	case 37: return .LocationDetectionView_Navbar_Next
    	case 38: return .LocationVerifyView
    	case 39: return .LocationVerifyView_TitleLbl
    	case 40: return .LocationVerifyView_AddressView
    	case 41: return .LocationVerifyView_AddressView_streetLbl
    	case 42: return .LocationVerifyView_AddressView_streetValue
    	case 43: return .LocationVerifyView_AddressView_streetNoLbl
    	case 44: return .LocationVerifyView_AddressView_streetNoValue
    	case 45: return .LocationVerifyView_AddressView_zipLbl
    	case 46: return .LocationVerifyView_AddressView_zipValue
    	case 47: return .LocationVerifyView_AddressView_cityLbl
    	case 48: return .LocationVerifyView_AddressView_cityValue
    	case 49: return .LocationVerifyView_AddressView_countryLbl
    	case 50: return .LocationVerifyView_AddressView_countryValue
    	case 51: return .LocationVerifyView_LatLoView
    	case 52: return .LocationVerifyView_LatLoView_latLbl
    	case 53: return .LocationVerifyView_LatLoView_latitudeValue
    	case 54: return .LocationVerifyView_LatLoView_longLbl
    	case 55: return .LocationVerifyView_LatLoView_longitudeValue
    	case 56: return .LocationVerifyView_Buttons
    	case 57: return .LocationVerifyView_Buttons_Previous
    	case 58: return .LocationVerifyView_Buttons_Cancel2
    	case 59: return .LocationVerifyView_Buttons_Next2
    	default: return .NotFound
        }
    }
}
