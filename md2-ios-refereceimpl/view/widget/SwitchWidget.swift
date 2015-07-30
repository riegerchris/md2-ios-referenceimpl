//
//  SwitchWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class SwitchWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2Boolean(false)
    
    var dimensions: (MD2Integer, MD2Integer, MD2Integer, MD2Integer)?
    
    var action: MD2String
    
    init(widgetId: WidgetMapping, initialValue: MD2Type, action: MD2String) {
        self.widgetId = widgetId
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let switchElement = UISwitch()
        switchElement.frame = CGRectMake(120, 300, 150, 100) // TODO dimensions
        //switchElement.addTarget(controller, action: Selector(action.toString().platformValue!), forControlEvents: .ValueChanged)
        if (value is MD2Boolean) && (value as! MD2Boolean).isSet() {
            switchElement.setOn((value as! MD2Boolean).platformValue!, animated: false)
        } else {
            switchElement.setOn(false, animated: false)
        }
        
        // Set styling
        // TODO styling
        
        // Add to surrounding view
        view.addSubview(switchElement)
    }
}