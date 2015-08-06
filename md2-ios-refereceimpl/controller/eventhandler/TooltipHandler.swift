//
//  TooltipHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class TooltipHandler: WidgetEventHandlerType {
    
    static let instance:TooltipHandler = TooltipHandler()
    
    func registerAction(action: ActionType, widget: WidgetWrapper) {
        // Not neccessary
    }
    
    func unregisterAction(action: ActionType, widget: WidgetWrapper) {
        // Not neccessary
    }
    
    @objc
    func fire(sender: UIControl) {
        let wrapper = WidgetRegistry.instance.getWidget(WidgetMapping.fromRawValue(sender.tag))
            
        if wrapper == nil || wrapper?.widget == nil {
            return
        }
            
        var alertView = UIAlertView()
        alertView.title = ViewConfig.TOOLTIP_TITLE
        alertView.addButtonWithTitle(ViewConfig.TOOLTIP_BUTTON)
            
        if wrapper!.widget is WidgetAssistedType && (wrapper!.widget as! WidgetAssistedType).tooltip != nil {
            alertView.message = (wrapper!.widget as! WidgetAssistedType).tooltip!.toString()
            alertView.show()
        }
    }
    
}