//
//  ButtonWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ButtonWidget: WidgetType {
    
    let name: MD2String
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: (MD2Integer, MD2Integer, MD2Integer, MD2Integer)?
    
    var action: MD2String
    
    init(name: MD2String, initialValue: MD2Type, action: MD2String) {
        self.name = name
        self.value = initialValue
        self.action = action
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let button = UIButton()
        button.frame = CGRectMake(120, 80, 150, 100) // TODO dimensions
        button.setTitle(value?.toString().platformValue, forState: .Normal)
        button.addTarget(controller, action: Selector(action.toString().platformValue!), forControlEvents: UIControlEvents.TouchUpInside) // TODO actions on touch events
        
        // Set styling
        button.backgroundColor = UIColor.blueColor() // TODO styling
        button.alpha = 0.6
        button.layer.borderWidth = 0.3
        button.layer.cornerRadius = 2
        button.titleLabel!.textAlignment=NSTextAlignment.Center
        
        // Add to surrounding view
        view.addSubview(button)
    }
}
