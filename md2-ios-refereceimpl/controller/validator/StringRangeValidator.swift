//
//  StringRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class StringRangeValidator: ValidatorType {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must be between \(minLength) and \(maxLength) characters long!")
        }
    }
    
    var minLength: MD2Integer
    
    var maxLength: MD2Integer
    
    init(message: () -> MD2String, minLength: MD2Integer, maxLength: MD2Integer) {
        self.message = message
        self.minLength = minLength
        self.maxLength = maxLength
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if !(value is MD2String)
            || !((value as! MD2String).isSet())
            || !(minLength.isSet())
            || !(maxLength.isSet()) {
                return MD2Boolean(false)
        }
        
        let stringValue = (value as! MD2String).platformValue!
        
        if count(stringValue) >= minLength.platformValue!
           && count(stringValue) <= maxLength.platformValue! {
            return MD2Boolean(true)
        } else {
            return MD2Boolean(false)
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