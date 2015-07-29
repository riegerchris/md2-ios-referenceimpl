//
//  TextFieldWidget.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class TextFieldWidget: WidgetType {
    
    let name: MD2String
    
    var value: MD2Type? = MD2String("")
    
    var dimensions: (MD2Integer, MD2Integer, MD2Integer, MD2Integer)?
    
    var placeholder: MD2String?
    
    init(name: MD2String, initialValue: MD2Type) {
        self.name = name
        self.value = initialValue
    }
    
    func render(view: UIView, controller: UIViewController) {
        
        // Create and set value
        let textField = UITextField()
        textField.frame = CGRectMake(120, 200, 150, 50) // TODO dimensions
        textField.placeholder = placeholder?.platformValue
        textField.text = value?.toString().platformValue
        
        // Set styling
        textField.backgroundColor = UIColor.grayColor() // TODO styling
        textField.borderStyle = UITextBorderStyle.Line
        
        // Add to surrounding view
        view.addSubview(textField)
    }
}
