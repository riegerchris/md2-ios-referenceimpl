//
//  LabelWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class LabelWidget: SingleWidgetType {
    
    let widgetId: WidgetMapping
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: (MD2Integer, MD2Integer, MD2Integer, MD2Integer)?
    
    init(widgetId: WidgetMapping, initialValue: MD2Type) {
        self.widgetId = widgetId
        self.value = initialValue
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let label = UILabel()
        label.text = value?.toString().platformValue
        
        // Set styling
        label.font = UIFont(name: "MarkerFelt-Thin", size: 12) // TODO styling
        label.textColor = UIColor.redColor()
        label.textAlignment = .Center
        label.numberOfLines = 5
        label.frame = CGRectMake(15, 254, 300, 500) // TODO dimensions
        
        // Add to surrounding view
        view.addSubview(label)
    }
}