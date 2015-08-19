//
//  MD2WidgetMapping.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 30.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

enum MD2WidgetMapping: Int {
    
    // A list of all widget elements used in the application
    // Needed for the identification of widgets and views (widgetId) which can only be of integer type due to platform restrictions on the widget tags
    case NotFound = 0
    case LocationDetectionView = 1
    case LocationDetectionView_TitleLbl = 2
    case LocationDetectionView_AddressData = 3
    case LocationDetectionView_StreetValueLabel = 4
    case LocationDetectionView_StreetValue = 5
    case LocationDetectionView_StreetNoValueLabel = 6
    case LocationDetectionView_StreetNoValue = 7
    case LocationDetectionView_ZipValueLabel = 8
    case LocationDetectionView_ZipValue = 9
    case LocationDetectionView_CityValueLabel = 10
    case LocationDetectionView_CityValue = 11
    case LocationDetectionView_Spacer = 12
    case LocationDetectionView_CountryValueLabel = 13
    case LocationDetectionView_CountryValue = 14
    case LocationDetectionView_Spacer2 = 15
    case LocationDetectionView_Spacer3 = 16
    case LocationDetectionView_LatitudeValueLabel = 17
    case LocationDetectionView_LatitudeValue = 18
    case LocationDetectionView_LongitudeValueLabel = 19
    case LocationDetectionView_LongitudeValue = 20
    case LocationDetectionView_Spacer4 = 21
    case LocationDetectionView_Navbar = 22
    case LocationDetectionView_PreviousDummy = 23
    case LocationDetectionView_Cancel = 24
    case LocationDetectionView_Next = 25
    case LocationVerifyView = 26
    case LocationVerifyView_TitleLbl = 27
    case LocationVerifyView_AddressView = 28
    case LocationVerifyView_StreetLbl = 29
    case LocationVerifyView_StreetValue = 30
    case LocationVerifyView_StreetNoLbl = 31
    case LocationVerifyView_StreetNoValue = 32
    case LocationVerifyView_ZipLbl = 33
    case LocationVerifyView_ZipValue = 34
    case LocationVerifyView_CityLbl = 35
    case LocationVerifyView_CityValue = 36
    case LocationVerifyView_Spacer = 37
    case LocationVerifyView_Spacer2 = 38
    case LocationVerifyView_CountryLbl = 39
    case LocationVerifyView_CountryValue = 40
    case LocationVerifyView_LatLoView = 41
    case LocationVerifyView_LatLbl = 42
    case LocationVerifyView_LatitudeValue = 43
    case LocationVerifyView_LongLbl = 44
    case LocationVerifyView_LongitudeValue = 45
    case LocationVerifyView_Spacer3 = 46
    case LocationVerifyView_Navbar = 47
    case LocationVerifyView_Previous = 48
    case LocationVerifyView_Cancel2 = 49
    case LocationVerifyView_Next2 = 50
    case LocationDetectionView_Spacer5 = 51

    
    // There is currently no introspection into enums
    // Therefore computed property to establish a link of type enum -> string representation
    var description: String {
        switch(self){
        case LocationDetectionView: return "LocationDetectionView"
        case LocationDetectionView_TitleLbl: return "LocationDetectionView_TitleLbl"
        case LocationDetectionView_AddressData: return "LocationDetectionView_AddressData"
        case LocationDetectionView_StreetValueLabel: return "LocationDetectionView_StreetValueLabel"
        case LocationDetectionView_StreetValue: return  "StreetValue"
        case LocationDetectionView_StreetNoValueLabel: return "LocationDetectionView_StreetNoValueLabel"
        case LocationDetectionView_StreetNoValue: return "LocationDetectionView_StreetNoValue"
        case LocationDetectionView_ZipValueLabel: return "LocationDetectionView_ZipValueLabel"
        case LocationDetectionView_ZipValue: return "LocationDetectionView_ZipValue"
        case LocationDetectionView_CityValueLabel: return "LocationDetectionView_CityValueLabel"
        case LocationDetectionView_CityValue: return "LocationDetectionView_CityValue"
        case LocationDetectionView_Spacer: return "LocationDetectionView_Spacer"
        case LocationDetectionView_CountryValueLabel: return "LocationDetectionView_CountryValueLabel"
        case LocationDetectionView_CountryValue: return "LocationDetectionView_CountryValue"
        case LocationDetectionView_Spacer2: return "LocationDetectionView_Spacer2"
        case LocationDetectionView_Spacer3: return "LocationDetectionView_Spacer3"
        case LocationDetectionView_LatitudeValueLabel: return "LocationDetectionView_LatitudeValueLabel"
        case LocationDetectionView_LatitudeValue: return "LocationDetectionView_LatitudeValue"
        case LocationDetectionView_LongitudeValueLabel: return "LocationDetectionView_LongitudeValueLabel"
        case LocationDetectionView_LongitudeValue: return "LocationDetectionView_LongitudeValue"
        case LocationDetectionView_Spacer4: return "LocationDetectionView_Spacer4"
        case LocationDetectionView_Navbar: return "LocationDetectionView_Navbar"
        case LocationDetectionView_PreviousDummy: return "LocationDetectionView_PreviousDummy"
        case LocationDetectionView_Cancel: return "LocationDetectionView_Cancel"
        case LocationDetectionView_Next: return "LocationDetectionView_Next"
        case LocationVerifyView: return "LocationVerifyView"
        case LocationVerifyView_TitleLbl: return "LocationVerifyView_TitleLbl"
        case LocationVerifyView_AddressView: return "LocationVerifyView_AddressView"
        case LocationVerifyView_StreetLbl: return "LocationVerifyView_StreetLbl"
        case LocationVerifyView_StreetValue: return "LocationVerifyView_StreetValue"
        case LocationVerifyView_StreetNoLbl: return "LocationVerifyView_StreetNoLbl"
        case LocationVerifyView_StreetNoValue: return "LocationVerifyView_StreetNoValue"
        case LocationVerifyView_ZipLbl: return "LocationVerifyView_ZipLbl"
        case LocationVerifyView_ZipValue: return "LocationVerifyView_ZipValue"
        case LocationVerifyView_CityLbl: return "LocationVerifyView_CityLbl"
        case LocationVerifyView_CityValue: return "LocationVerifyView_CityValue"
        case LocationVerifyView_Spacer: return "LocationVerifyView_Spacer"
        case LocationVerifyView_Spacer2: return "LocationVerifyView_Spacer2"
        case LocationVerifyView_CountryLbl: return "LocationVerifyView_CountryLbl"
        case LocationVerifyView_CountryValue: return "LocationVerifyView_CountryValue"
        case LocationVerifyView_LatLoView: return "LocationVerifyView_LatLoView"
        case LocationVerifyView_LatLbl: return "LocationVerifyView_LatLbl"
        case LocationVerifyView_LatitudeValue: return "LocationVerifyView_LatitudeValue"
        case LocationVerifyView_LongLbl: return "LocationVerifyView_LongLbl"
        case LocationVerifyView_LongitudeValue: return "LocationVerifyView_LongitudeValue"
        case LocationVerifyView_Spacer3: return "LocationVerifyView_Spacer3"
        case LocationVerifyView_Navbar: return "LocationVerifyView_Navbar"
        case LocationVerifyView_Previous: return "LocationVerifyView_Previous"
        case LocationVerifyView_Cancel2: return "LocationVerifyView_Cancel2"
        case LocationVerifyView_Next2: return "LocationVerifyView_Next2"
        case LocationDetectionView_Spacer5: return "LocationDetectionView_Spacer5"
        default: return "NotFound"
        }
    }
    
    // There is currently no introspection into enums
    // Therefore static method to establish a backward link of type raw int value -> enum
    static func fromRawValue(value: Int) -> MD2WidgetMapping {
        switch(value){
        case 1: return LocationDetectionView
        case 2: return LocationDetectionView_TitleLbl
        case 3: return LocationDetectionView_AddressData
        case 4: return LocationDetectionView_StreetValueLabel
        case 5: return LocationDetectionView_StreetValue
        case 6: return LocationDetectionView_StreetNoValueLabel
        case 7: return LocationDetectionView_StreetNoValue
        case 8: return LocationDetectionView_ZipValueLabel
        case 9: return LocationDetectionView_ZipValue
        case 10: return LocationDetectionView_CityValueLabel
        case 11: return LocationDetectionView_CityValue
        case 12: return LocationDetectionView_Spacer
        case 13: return LocationDetectionView_CountryValueLabel
        case 14: return LocationDetectionView_CountryValue
        case 15: return LocationDetectionView_Spacer2
        case 16: return LocationDetectionView_Spacer3
        case 17: return LocationDetectionView_LatitudeValueLabel
        case 18: return LocationDetectionView_LatitudeValue
        case 19: return LocationDetectionView_LongitudeValueLabel
        case 20: return LocationDetectionView_LongitudeValue
        case 21: return LocationDetectionView_Spacer4
        case 22: return LocationDetectionView_Navbar
        case 23: return LocationDetectionView_PreviousDummy
        case 24: return LocationDetectionView_Cancel
        case 25: return LocationDetectionView_Next
        case 26: return LocationVerifyView
        case 27: return LocationVerifyView_TitleLbl
        case 28: return LocationVerifyView_AddressView
        case 29: return LocationVerifyView_StreetLbl
        case 30: return LocationVerifyView_StreetValue
        case 31: return LocationVerifyView_StreetNoLbl
        case 32: return LocationVerifyView_StreetNoValue
        case 33: return LocationVerifyView_ZipLbl
        case 34: return LocationVerifyView_ZipValue
        case 35: return LocationVerifyView_CityLbl
        case 36: return LocationVerifyView_CityValue
        case 37: return LocationVerifyView_Spacer
        case 38: return LocationVerifyView_Spacer2
        case 39: return LocationVerifyView_CountryLbl
        case 40: return LocationVerifyView_CountryValue
        case 41: return LocationVerifyView_LatLoView
        case 42: return LocationVerifyView_LatLbl
        case 43: return LocationVerifyView_LatitudeValue
        case 44: return LocationVerifyView_LongLbl
        case 45: return LocationVerifyView_LongitudeValue
        case 46: return LocationVerifyView_Spacer3
        case 47: return LocationVerifyView_Navbar
        case 48: return LocationVerifyView_Previous
        case 49: return LocationVerifyView_Cancel2
        case 50: return LocationVerifyView_Next2
        case 51: return LocationDetectionView_Spacer5
        default: return NotFound
        }
    }
    
}