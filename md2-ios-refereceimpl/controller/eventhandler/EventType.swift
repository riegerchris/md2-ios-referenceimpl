//
//  EventType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 14.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

enum EventType {
    // WidgetEvents
    case OnClick
    case OnWidgetChange
    case OnLeftSwipe
    case OnRightSwipe
    case OnWrongValidation
    
    // ContentProviderEvents
    case OnContentChange
    
    // GlobalEvents
    case OnConnectionLost
    case OnConnectionRegained
    case OnLocationUpdate
    
    func getEventHandler() -> EventHandlerType {
        switch self {
        case OnClick: return OnClickHandler.instance
        case OnWidgetChange: return OnWidgetChangeHandler.instance
        case OnLeftSwipe: return OnLeftSwipeHandler.instance
        case OnRightSwipe: return OnRightSwipeHandler.instance
        case OnWrongValidation: return OnWrongValidationHandler.instance
        case OnContentChange: return OnContentChangeHandler.instance
        case OnConnectionLost: return OnConnectionLostHandler.instance
        case OnConnectionRegained: return OnConnectionRegainedHandler.instance
        case OnLocationUpdate: return OnLocationUpdateHandler.instance
        default: return OnClickHandler.instance
        }
    }
    
    func isWidgetEvent() -> Bool {
        return self == .OnClick || self == .OnWidgetChange || self == .OnLeftSwipe || self == .OnRightSwipe || self == OnWrongValidation
    }
    
    func isContentProviderEvent() -> Bool {
        return self == .OnContentChange
    }
    
    func isGlobalEvent() -> Bool {
        return self == .OnConnectionLost || self == .OnConnectionRegained || self == .OnLocationUpdate
    }
    
}