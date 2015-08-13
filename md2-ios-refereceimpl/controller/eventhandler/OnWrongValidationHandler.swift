//
//  OnWrongValidationHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class OnWrongValidationHandler: WidgetEventHandlerType {
    
    typealias actionWidgetTuple = (ActionType,WidgetWrapper)
    
    static let instance:OnWrongValidationHandler = OnWrongValidationHandler()
    
    var actions: Dictionary<String,actionWidgetTuple> = [:]
    
    func registerAction(action: ActionType, widget: WidgetWrapper) {
        actions[action.actionSignature] = (action, widget)
        //println("registered action \(action.actionSignature.platformValue!)")
    }
    
    func unregisterAction(action: ActionType, widget: WidgetWrapper) {
        for (key, value) in actions {
            if key == action.actionSignature {
                actions[key] = nil
                break
            }
        }
    }
    
    @objc
    func fire(sender: WidgetWrapper) {
        //println("Event fired to OnWrongValidationHandler: " + sender.widgetId.description)
        
        for (_, (action, widget)) in actions {
            if widget.widgetId == sender.widgetId {
                action.execute()
            }
        }
    }
    
}