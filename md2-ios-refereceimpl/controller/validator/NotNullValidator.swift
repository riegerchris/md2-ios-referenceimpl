//
//  NotNullValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class NotNullValidator: ValidatorType {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String = MD2String("This value must not be empty!")
    
    init(message: () -> MD2String) {
        self.message = message
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if value.toString().equals(MD2String("")) {
            return MD2Boolean(false)
        } else {
            return MD2Boolean(true)
        }
    }
    
    func getMessage() -> MD2String {
        if let _ = message {
            return message!()
        } else  {
            return defaultMessage
        }
    }
    
}