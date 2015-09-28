//
//  WorkflowEvent.swift
//
//  Generated code by class 'WidgetMapping' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 15.08.2015 
//

/**
    Enumeration type to identify all view elements in the app.
    
    **IMPORTANT** Needed for the identification of widgets and views (widgetId) which can only be passed as integer type due to platform restrictions on the widget tags.
*/
enum MD2WidgetMapping: Int {
    
    case NotFound = 0
	case Spacer = 1 // Dummy because spacers have no given name
    case __startScreen = 2
    case __startScreen_Label = 3
    case LocationDetectionView = 4
    case TitleLbl = 5
    case AddressData = 6
    case __ContainerstreetValue = 7
    case __LabelstreetValue = 8
    case StreetValue = 9
    case __TooltipstreetValue = 10
    case __ContainerstreetNoValue = 11
    case __LabelstreetNoValue = 12
    case StreetNoValue = 13
    case __TooltipstreetNoValue = 14
    case __ContainerzipValue = 15
    case __LabelzipValue = 16
    case ZipValue = 17
    case __TooltipzipValue = 18
    case __ContainercityValue = 19
    case __LabelcityValue = 20
    case CityValue = 21
    case __TooltipcityValue = 22
    case __ContainercountryValue = 23
    case __LabelcountryValue = 24
    case CountryValue = 25
    case __TooltipcountryValue = 26
    case __ContainerlatitudeValue = 27
    case __LabellatitudeValue = 28
    case LatitudeValue = 29
    case __TooltiplatitudeValue = 30
    case __ContainerlongitudeValue = 31
    case __LabellongitudeValue = 32
    case LongitudeValue = 33
    case __TooltiplongitudeValue = 34
    case Navbar = 35
    case PreviousDummy = 36
    case Cancel = 37
    case Next = 38
    case LocationVerifyView = 39
    case TitleLbl1 = 40
    case AddressView = 41
    case StreetLbl = 42
    case StreetValue1 = 43
    case StreetNoLbl = 44
    case StreetNoValue1 = 45
    case ZipLbl = 46
    case ZipValue1 = 47
    case CityLbl = 48
    case CityValue1 = 49
    case CountryLbl = 50
    case CountryValue1 = 51
    case LatLoView = 52
    case LatLbl = 53
    case LatitudeValue1 = 54
    case LongLbl = 55
    case LongitudeValue1 = 56
    case Buttons = 57
    case Previous = 58
    case Cancel2 = 59
    case Next2 = 60
    case ComplaintInput = 61
    case TitleLbl2 = 62
    case AddressView1 = 63
    case StreetLbl1 = 64
    case StreetValue2 = 65
    case StreetNoLbl1 = 66
    case StreetNoValue2 = 67
    case ZipLbl1 = 68
    case ZipValue2 = 69
    case CityLbl1 = 70
    case CityValue2 = 71
    case CountryLbl1 = 72
    case CountryValue2 = 73
    case DescriptionLbl = 74
    case DescriptionTxt = 75
    case Cancel3 = 76
    case SubmitComplaint = 77
    case __startScreen_Button_LocationCapturing = 78
    
    /**
        There is currently no introspection into enums.
        Therefore computed property to establish a link of type enum -> string representation.
    */
    var description: String {
        switch self {
        case .Spacer: return "Spacer"
        case .__startScreen: return "__startScreen"
        case .__startScreen_Label: return "__startScreen_Label"
        case .LocationDetectionView: return "LocationDetectionView"
        case .TitleLbl: return "TitleLbl"
        case .AddressData: return "AddressData"
        case .__ContainerstreetValue: return "__ContainerstreetValue"
        case .__LabelstreetValue: return "__LabelstreetValue"
        case .StreetValue: return "StreetValue"
        case .__TooltipstreetValue: return "__TooltipstreetValue"
        case .__ContainerstreetNoValue: return "__ContainerstreetNoValue"
        case .__LabelstreetNoValue: return "__LabelstreetNoValue"
        case .StreetNoValue: return "StreetNoValue"
        case .__TooltipstreetNoValue: return "__TooltipstreetNoValue"
        case .__ContainerzipValue: return "__ContainerzipValue"
        case .__LabelzipValue: return "__LabelzipValue"
        case .ZipValue: return "ZipValue"
        case .__TooltipzipValue: return "__TooltipzipValue"
        case .__ContainercityValue: return "__ContainercityValue"
        case .__LabelcityValue: return "__LabelcityValue"
        case .CityValue: return "CityValue"
        case .__TooltipcityValue: return "__TooltipcityValue"
        case .__ContainercountryValue: return "__ContainercountryValue"
        case .__LabelcountryValue: return "__LabelcountryValue"
        case .CountryValue: return "CountryValue"
        case .__TooltipcountryValue: return "__TooltipcountryValue"
        case .__ContainerlatitudeValue: return "__ContainerlatitudeValue"
        case .__LabellatitudeValue: return "__LabellatitudeValue"
        case .LatitudeValue: return "LatitudeValue"
        case .__TooltiplatitudeValue: return "__TooltiplatitudeValue"
        case .__ContainerlongitudeValue: return "__ContainerlongitudeValue"
        case .__LabellongitudeValue: return "__LabellongitudeValue"
        case .LongitudeValue: return "LongitudeValue"
        case .__TooltiplongitudeValue: return "__TooltiplongitudeValue"
        case .Navbar: return "Navbar"
        case .PreviousDummy: return "PreviousDummy"
        case .Cancel: return "Cancel"
        case .Next: return "Next"
        case .LocationVerifyView: return "LocationVerifyView"
        case .TitleLbl1: return "TitleLbl1"
        case .AddressView: return "AddressView"
        case .StreetLbl: return "StreetLbl"
        case .StreetValue1: return "StreetValue1"
        case .StreetNoLbl: return "StreetNoLbl"
        case .StreetNoValue1: return "StreetNoValue1"
        case .ZipLbl: return "ZipLbl"
        case .ZipValue1: return "ZipValue1"
        case .CityLbl: return "CityLbl"
        case .CityValue1: return "CityValue1"
        case .CountryLbl: return "CountryLbl"
        case .CountryValue1: return "CountryValue1"
        case .LatLoView: return "LatLoView"
        case .LatLbl: return "LatLbl"
        case .LatitudeValue1: return "LatitudeValue1"
        case .LongLbl: return "LongLbl"
        case .LongitudeValue1: return "LongitudeValue1"
        case .Buttons: return "Buttons"
        case .Previous: return "Previous"
        case .Cancel2: return "Cancel2"
        case .Next2: return "Next2"
        case .ComplaintInput: return "ComplaintInput"
        case .TitleLbl2: return "TitleLbl2"
        case .AddressView1: return "AddressView1"
        case .StreetLbl1: return "StreetLbl1"
        case .StreetValue2: return "StreetValue2"
        case .StreetNoLbl1: return "StreetNoLbl1"
        case .StreetNoValue2: return "StreetNoValue2"
        case .ZipLbl1: return "ZipLbl1"
        case .ZipValue2: return "ZipValue2"
        case .CityLbl1: return "CityLbl1"
        case .CityValue2: return "CityValue2"
        case .CountryLbl1: return "CountryLbl1"
        case .CountryValue2: return "CountryValue2"
        case .DescriptionLbl: return "DescriptionLbl"
        case .DescriptionTxt: return "DescriptionTxt"
        case .Cancel3: return "Cancel3"
        case .SubmitComplaint: return "SubmitComplaint"
        case .__startScreen_Button_LocationCapturing: return "__startScreen_Button_LocationCapturing"
    	default: return "NotFound"
        }
    }
    
    /**
        There is currently no introspection into enums.
        Therefore static method to establish a backward link of type raw int value -> enum.
    */
    static func fromRawValue(value: Int) -> MD2WidgetMapping {
        switch(value){
        case 1: return .Spacer
        case 2: return .__startScreen
        case 4: return .__startScreen_Label
    	case 4: return .LocationDetectionView
    	case 5: return .TitleLbl
    	case 6: return .AddressData
    	case 7: return .__ContainerstreetValue
    	case 8: return .__LabelstreetValue
    	case 9: return .StreetValue
    	case 10: return .__TooltipstreetValue
    	case 11: return .__ContainerstreetNoValue
    	case 12: return .__LabelstreetNoValue
    	case 13: return .StreetNoValue
    	case 14: return .__TooltipstreetNoValue
    	case 15: return .__ContainerzipValue
    	case 16: return .__LabelzipValue
    	case 17: return .ZipValue
    	case 18: return .__TooltipzipValue
    	case 19: return .__ContainercityValue
    	case 20: return .__LabelcityValue
    	case 21: return .CityValue
    	case 22: return .__TooltipcityValue
    	case 23: return .__ContainercountryValue
    	case 24: return .__LabelcountryValue
    	case 25: return .CountryValue
    	case 26: return .__TooltipcountryValue
    	case 27: return .__ContainerlatitudeValue
    	case 28: return .__LabellatitudeValue
    	case 29: return .LatitudeValue
    	case 30: return .__TooltiplatitudeValue
    	case 31: return .__ContainerlongitudeValue
    	case 32: return .__LabellongitudeValue
    	case 33: return .LongitudeValue
    	case 34: return .__TooltiplongitudeValue
    	case 35: return .Navbar
    	case 36: return .PreviousDummy
    	case 37: return .Cancel
    	case 38: return .Next
    	case 39: return .LocationVerifyView
    	case 40: return .TitleLbl1
    	case 41: return .AddressView
    	case 42: return .StreetLbl
    	case 43: return .StreetValue1
    	case 44: return .StreetNoLbl
    	case 45: return .StreetNoValue1
    	case 46: return .ZipLbl
    	case 47: return .ZipValue1
    	case 48: return .CityLbl
    	case 49: return .CityValue1
    	case 50: return .CountryLbl
    	case 51: return .CountryValue1
    	case 52: return .LatLoView
    	case 53: return .LatLbl
    	case 54: return .LatitudeValue1
    	case 55: return .LongLbl
    	case 56: return .LongitudeValue1
    	case 57: return .Buttons
    	case 58: return .Previous
    	case 59: return .Cancel2
    	case 60: return .Next2
    	case 61: return .ComplaintInput
    	case 62: return .TitleLbl2
    	case 63: return .AddressView1
    	case 64: return .StreetLbl1
    	case 65: return .StreetValue2
    	case 66: return .StreetNoLbl1
    	case 67: return .StreetNoValue2
    	case 68: return .ZipLbl1
    	case 69: return .ZipValue2
    	case 70: return .CityLbl1
    	case 71: return .CityValue2
    	case 72: return .CountryLbl1
    	case 73: return .CountryValue2
    	case 74: return .DescriptionLbl
    	case 75: return .DescriptionTxt
    	case 76: return .Cancel3
    	case 77: return .SubmitComplaint
    	case 78: return .__startScreen_Button_LocationCapturing
    	default: return .NotFound
        }
    }
}
