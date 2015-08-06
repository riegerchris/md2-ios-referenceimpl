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
            
        if wrapper == nil || wrapper?.widget == nil || !(wrapper!.widget is WidgetAssistedType) {
            return
        }
        
        if (wrapper!.widget as! WidgetAssistedType).tooltip != nil { 
            UIUtil.showMessage((wrapper!.widget as! WidgetAssistedType).tooltip!.toString(),
                title: ViewConfig.TOOLTIP_TITLE_INFO)
        }
    }
    
}