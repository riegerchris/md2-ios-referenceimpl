//
//  NotNullValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class NotNullValidator: ValidatorType {
    
    var message: MD2String? // TODO change to represent Lambda
    
    var defaultMessage: MD2String = MD2String(value: "This value must not be null!")
    
    func isValid(value: MD2Type) -> MD2Boolean {
        return MD2Boolean(value: true)
    }
    
    func getMessage() -> MD2String {
        if let _ = message {
            return message!
        } else  {
            return defaultMessage
        }
    }
    
}