//
//  TooltipHandler.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2TooltipHandler: MD2WidgetEventHandler {
    
    static let instance: MD2TooltipHandler = MD2TooltipHandler()
    
    func registerAction(action: MD2Action, widget: MD2WidgetWrapper) {
        // Not neccessary
    }
    
    func unregisterAction(action: MD2Action, widget: MD2WidgetWrapper) {
        // Not neccessary
    }
    
    @objc
    func fire(sender: UIControl) {
        let wrapper = MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.fromRawValue(sender.tag))
            
        if wrapper == nil || wrapper?.widget == nil || !(wrapper!.widget is MD2WidgetAssisted) {
            return
        }
        
        if (wrapper!.widget as! MD2WidgetAssisted).tooltip != nil {
            MD2UIUtil.showMessage((wrapper!.widget as! MD2WidgetAssisted).tooltip!.toString(),
                title: MD2ViewConfig.TOOLTIP_TITLE_INFO)
        }
    }
    
}