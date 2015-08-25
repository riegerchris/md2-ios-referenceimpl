//
//  MD2RegExValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2RegExValidator: MD2ValidatorType {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must match the expected pattern!")
        }
    }
    
    let regEx: MD2RegEx
    
    init(identifier: MD2String, message: (() -> MD2String)?, regEx: MD2String) {
        self.identifier = identifier
        self.message = message
        self.regEx = MD2RegEx(pattern: regEx)
    }
    
    func isValid(value: MD2Type) -> Bool {
        if value is MD2String {
            return regEx.test(value as! MD2String)
        } else {
            return false
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