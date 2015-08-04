//
//  WidgetMapping.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 30.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// TODO make a bidirectional struct from it, useful also for other applications like the data mapping
enum WidgetMapping: Int {
    
    // A list of all widget elements used in the application
    // Needed for the identification of widgets and views (widgetId) which can only be of integer type due to platform restrictions on the widget tags
    case NotFound = 0
    case Label1 = 1
    case Button1 = 2
    case MainView = 3
    case SubLayout1 = 4
    case TextField1 = 5
    case Switch1 = 6
    case Switch2 = 7
    case View2 = 8
    case Label2 = 9
    case Spacer = 10
    case Option1 = 11
    
    // There is currently no introspection into enums
    // Therefore computed property to establish a link of type enum -> string representation
    var description: String {
        switch(self){
        case .Label1: return "Label1"
        case .Button1: return "Button1"
        case .MainView: return "MainView"
        case .SubLayout1: return "SubLayout1"
        case .TextField1: return "TextField1"
        case .Switch1: return "Switch1"
        case .Switch2: return "Switch2"
        case .View2: return "View2"
        case .Label2: return "Label2"
        case .Spacer: return "Spacer"
        case .Option1: return "Option1"
        default: return "NotFound"
        }
    }
    
    // Therefore static method to establish a link of type raw int value -> enum
    static func fromRawValue(value: Int) -> WidgetMapping {
        switch(value){
        case 1: return .Label1
        case 2: return .Button1
        case 3: return .MainView
        case 4: return .SubLayout1
        case 5: return .TextField1
        case 6: return .Switch1
        case 7: return .Switch2
        case 8: return .View2
        case 9: return .Label2
        case 10: return .Spacer
        case 11: return .Option1
        default: return .NotFound
        }
    }
    
}