//
//  RegExValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class RegExValidator {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must match the expected pattern!")
        }
    }
    
    let regEx: RegEx
    
    init(message: () -> MD2String, regEx: MD2String) {
        self.message = message
        self.regEx = RegEx(pattern: regEx)
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if value is MD2String {
            return regEx.test(value as! MD2String)
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