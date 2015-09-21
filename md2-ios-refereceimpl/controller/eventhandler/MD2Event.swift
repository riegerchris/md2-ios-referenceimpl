//
//  Event.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 14.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

enum MD2Event {
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
    
    func getEventHandler() -> MD2EventHandler {
        switch self {
        case OnClick: return MD2OnClickHandler.instance
        case OnWidgetChange: return MD2OnWidgetChangeHandler.instance
        case OnLeftSwipe: return MD2OnLeftSwipeHandler.instance
        case OnRightSwipe: return MD2OnRightSwipeHandler.instance
        case OnWrongValidation: return MD2OnWrongValidationHandler.instance
        case OnContentChange: return MD2OnContentChangeHandler.instance
        case OnConnectionLost: return MD2OnConnectionLostHandler.instance
        case OnConnectionRegained: return MD2OnConnectionRegainedHandler.instance
        case OnLocationUpdate: return MD2OnLocationUpdateHandler.instance
        default: return MD2OnClickHandler.instance
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