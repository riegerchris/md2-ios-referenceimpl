//
//  StringRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class StringRangeValidator: ValidatorType {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String = MD2String(value: "This value must be between \(minLength) and \(maxLength) characters long!")
    
    var minLength: MD2Integer
    
    var maxLength: MD2Integer
    
    init(message: () -> MD2String, minLength: MD2Integer, maxLength: MD2Integer) {
        self.message = message
        self.minLength = minLength
        self.maxLength = maxLength
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if value is MD2String
            && count((value as! MD2String).platformValue) >= minLength
            && count((value as! MD2String).platformValue) <= maxLength {
            return MD2Boolean(value: true)
        } else {
            return MD2Boolean(value: false)
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