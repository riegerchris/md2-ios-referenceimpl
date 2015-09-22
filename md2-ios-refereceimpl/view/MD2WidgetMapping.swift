//
//  WorkflowEvent.swift
//
//  Generated code by class 'IOSWidgetMapping' on 22.09.2015
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
    case __Containerbirthdate = 9
    case __Labelbirthdate = 10
    case Birthdate = 11
    case __Containergender = 12
    case __Labelgender = 13
    case Gender = 14
    case Address = 15
    case Pic = 16
    case __ContainerzipValue = 17
    case __LabelzipValue = 18
    case ZipValue = 19
    case __TooltipzipValue = 20
    case __ContainercityValue = 21
    case __LabelcityValue = 22
    case CityValue = 23
    case __TooltipcityValue = 24
    case __ContainercountryValue = 25
    case __LabelcountryValue = 26
    case CountryValue = 27
    case __TooltipcountryValue = 28
    case Navbar = 29
    case PreviousDummy = 30
    case Cancel = 31
    case Next = 32
    case LocationVerifyView = 33
    case TitleLbl1 = 34
    case AddressView = 35
    case StreetLbl = 36
    case StreetValue1 = 37
    case StreetNoLbl = 38
    case StreetNoValue = 39
    case ZipLbl = 40
    case ZipValue1 = 41
    case CityLbl = 42
    case CityValue1 = 43
    case CountryLbl = 44
    case CountryValue1 = 45
    case LatLoView = 46
    case LatLbl = 47
    case LatitudeValue = 48
    case LongLbl = 49
    case LongitudeValue = 50
    case Buttons = 51
    case Previous = 52
    case Cancel2 = 53
    case Next2 = 54
    
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
        case .__Containerbirthdate: return "__Containerbirthdate"
        case .__Labelbirthdate: return "__Labelbirthdate"
        case .Birthdate: return "Birthdate"
        case .__Containergender: return "__Containergender"
        case .__Labelgender: return "__Labelgender"
        case .Gender: return "Gender"
        case .Address: return "Address"
        case .Pic: return "Pic"
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
        case .StreetNoValue: return "StreetNoValue"
        case .ZipLbl: return "ZipLbl"
        case .ZipValue1: return "ZipValue1"
        case .CityLbl: return "CityLbl"
        case .CityValue1: return "CityValue1"
        case .CountryLbl: return "CountryLbl"
        case .CountryValue1: return "CountryValue1"
        case .LatLoView: return "LatLoView"
        case .LatLbl: return "LatLbl"
        case .LatitudeValue: return "LatitudeValue"
        case .LongLbl: return "LongLbl"
        case .LongitudeValue: return "LongitudeValue"
        case .Buttons: return "Buttons"
        case .Previous: return "Previous"
        case .Cancel2: return "Cancel2"
        case .Next2: return "Next2"
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
    	case 9: return .__Containerbirthdate
    	case 10: return .__Labelbirthdate
    	case 11: return .Birthdate
    	case 12: return .__Containergender
    	case 13: return .__Labelgender
    	case 14: return .Gender
    	case 15: return .Address
    	case 16: return .Pic
    	case 17: return .__ContainerzipValue
    	case 18: return .__LabelzipValue
    	case 19: return .ZipValue
    	case 20: return .__TooltipzipValue
    	case 21: return .__ContainercityValue
    	case 22: return .__LabelcityValue
    	case 23: return .CityValue
    	case 24: return .__TooltipcityValue
    	case 25: return .__ContainercountryValue
    	case 26: return .__LabelcountryValue
    	case 27: return .CountryValue
    	case 28: return .__TooltipcountryValue
    	case 29: return .Navbar
    	case 30: return .PreviousDummy
    	case 31: return .Cancel
    	case 32: return .Next
    	case 33: return .LocationVerifyView
    	case 34: return .TitleLbl1
    	case 35: return .AddressView
    	case 36: return .StreetLbl
    	case 37: return .StreetValue1
    	case 38: return .StreetNoLbl
    	case 39: return .StreetNoValue
    	case 40: return .ZipLbl
    	case 41: return .ZipValue1
    	case 42: return .CityLbl
    	case 43: return .CityValue1
    	case 44: return .CountryLbl
    	case 45: return .CountryValue1
    	case 46: return .LatLoView
    	case 47: return .LatLbl
    	case 48: return .LatitudeValue
    	case 49: return .LongLbl
    	case 50: return .LongitudeValue
    	case 51: return .Buttons
    	case 52: return .Previous
    	case 53: return .Cancel2
    	case 54: return .Next2
    	default: return .NotFound
        }
    }
}
