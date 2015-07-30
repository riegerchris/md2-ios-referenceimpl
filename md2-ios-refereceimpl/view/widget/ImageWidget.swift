//
//  ImageWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class ImageWidget: SingleWidgetType {
    
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
        let imageElement = UIImageView()
        imageElement.frame = CGRectMake(120, 300, 150, 100) // TODO dimensions
        let image = UIImage(named: value!.toString().platformValue!)
        imageElement.image = image
        
        // Set styling
        // TODO styling
        
        // Add to surrounding view
        view.addSubview(imageElement)
    }
}