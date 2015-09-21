//
//  WorkflowEvent.swift
//
//  Generated code by class 'IOSWidgetMapping' on 30.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

enum MD2WidgetMapping: Int {
    
    // A list of all widget elements used in the application
    // Needed for the identification of widgets and views (widgetId) which can only be of integer type due to platform restrictions on the widget tags
	case NotFound = 0
	case Spacer = 1 // Dummy because spacers have no given name
    case LocationDetectionView = 2
    case TitleLbl = 3
    case AddressData = 4
    case __ContainerstreetValue = 5
    case __LabelstreetValue = 6
    case StreetValue = 7
    case __TooltipstreetValue = 8
    case __ContainerstreetNoValue = 9
    case __LabelstreetNoValue = 10
    case StreetNoValue = 11
    case __TooltipstreetNoValue = 12
    case __ContainerzipValue = 13
    case __LabelzipValue = 14
    case ZipValue = 15
    case __TooltipzipValue = 16
    case __ContainercityValue = 17
    case __LabelcityValue = 18
    case CityValue = 19
    case __TooltipcityValue = 20
    case __ContainercountryValue = 21
    case __LabelcountryValue = 22
    case CountryValue = 23
    case __TooltipcountryValue = 24
    case __ContainerlatitudeValue = 25
    case __LabellatitudeValue = 26
    case LatitudeValue = 27
    case __TooltiplatitudeValue = 28
    case __ContainerlongitudeValue = 29
    case __LabellongitudeValue = 30
    case LongitudeValue = 31
    case __TooltiplongitudeValue = 32
    case Navbar = 33
    case PreviousDummy = 34
    case Cancel = 35
    case Next = 36
    case LocationVerifyView = 37
    case TitleLbl1 = 38
    case AddressView = 39
    case StreetLbl = 40
    case StreetValue1 = 41
    case StreetNoLbl = 42
    case StreetNoValue1 = 43
    case ZipLbl = 44
    case ZipValue1 = 45
    case CityLbl = 46
    case CityValue1 = 47
    case CountryLbl = 48
    case CountryValue1 = 49
    case LatLoView = 50
    case LatLbl = 51
    case LatitudeValue1 = 52
    case LongLbl = 53
    case LongitudeValue1 = 54
    case Buttons = 55
    case Previous = 56
    case Cancel2 = 57
    case Next2 = 58
    case SubmitComplaintView = 59
    case TitleLbl2 = 60
    case AddressView1 = 61
    case StreetLbl1 = 62
    case StreetValue2 = 63
    case StreetNoLbl1 = 64
    case StreetNoValue2 = 65
    case ZipLbl1 = 66
    case ZipValue2 = 67
    case CityLbl1 = 68
    case CityValue2 = 69
    case CountryLbl1 = 70
    case CountryValue2 = 71
    case DescriptionLbl = 72
    case DescriptionTxt = 73
    case Cancel3 = 74
    case SubmitComplaint = 75
    
    // There is currently no introspection into enums
    // Therefore computed property to establish a link of type enum -> string representation
    var description: String {
        switch self {
        case .Spacer: return "Spacer"
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
        case .SubmitComplaintView: return "SubmitComplaintView"
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
    	default: return "NotFound"
        }
    }
    
    // There is currently no introspection into enums
    // Therefore static method to establish a backward link of type raw int value -> enum
    static func fromRawValue(value: Int) -> MD2WidgetMapping {
        switch(value){
        case 1: return .Spacer
    	case 2: return .LocationDetectionView
    	case 3: return .TitleLbl
    	case 4: return .AddressData
    	case 5: return .__ContainerstreetValue
    	case 6: return .__LabelstreetValue
    	case 7: return .StreetValue
    	case 8: return .__TooltipstreetValue
    	case 9: return .__ContainerstreetNoValue
    	case 10: return .__LabelstreetNoValue
    	case 11: return .StreetNoValue
    	case 12: return .__TooltipstreetNoValue
    	case 13: return .__ContainerzipValue
    	case 14: return .__LabelzipValue
    	case 15: return .ZipValue
    	case 16: return .__TooltipzipValue
    	case 17: return .__ContainercityValue
    	case 18: return .__LabelcityValue
    	case 19: return .CityValue
    	case 20: return .__TooltipcityValue
    	case 21: return .__ContainercountryValue
    	case 22: return .__LabelcountryValue
    	case 23: return .CountryValue
    	case 24: return .__TooltipcountryValue
    	case 25: return .__ContainerlatitudeValue
    	case 26: return .__LabellatitudeValue
    	case 27: return .LatitudeValue
    	case 28: return .__TooltiplatitudeValue
    	case 29: return .__ContainerlongitudeValue
    	case 30: return .__LabellongitudeValue
    	case 31: return .LongitudeValue
    	case 32: return .__TooltiplongitudeValue
    	case 33: return .Navbar
    	case 34: return .PreviousDummy
    	case 35: return .Cancel
    	case 36: return .Next
    	case 37: return .LocationVerifyView
    	case 38: return .TitleLbl1
    	case 39: return .AddressView
    	case 40: return .StreetLbl
    	case 41: return .StreetValue1
    	case 42: return .StreetNoLbl
    	case 43: return .StreetNoValue1
    	case 44: return .ZipLbl
    	case 45: return .ZipValue1
    	case 46: return .CityLbl
    	case 47: return .CityValue1
    	case 48: return .CountryLbl
    	case 49: return .CountryValue1
    	case 50: return .LatLoView
    	case 51: return .LatLbl
    	case 52: return .LatitudeValue1
    	case 53: return .LongLbl
    	case 54: return .LongitudeValue1
    	case 55: return .Buttons
    	case 56: return .Previous
    	case 57: return .Cancel2
    	case 58: return .Next2
    	case 59: return .SubmitComplaintView
    	case 60: return .TitleLbl2
    	case 61: return .AddressView1
    	case 62: return .StreetLbl1
    	case 63: return .StreetValue2
    	case 64: return .StreetNoLbl1
    	case 65: return .StreetNoValue2
    	case 66: return .ZipLbl1
    	case 67: return .ZipValue2
    	case 68: return .CityLbl1
    	case 69: return .CityValue2
    	case 70: return .CountryLbl1
    	case 71: return .CountryValue2
    	case 72: return .DescriptionLbl
    	case 73: return .DescriptionTxt
    	case 74: return .Cancel3
    	case 75: return .SubmitComplaint
    	default: return .NotFound
        }
    }
}
