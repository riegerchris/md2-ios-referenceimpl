//
//  MD2IsNumberValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2IsNumberValidator: MD2Validator {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must be a valid number!")
        }
    }
    
    init(identifier: MD2String, message: (() -> MD2String)?) {
        self.identifier = identifier
        self.message = message
    }
    
    func isValid(value: MD2Type) -> Bool {
        switch value {
        case is MD2NumericType: return true
        case is MD2String:
            // Try to parse
            if MD2Float(MD2String(value.toString())).toString() == value.toString()
                || MD2Integer(MD2String(value.toString())).toString() == value.toString() {
                    return true
            }
        default: return false
        }
        
        return false
    }
    
    func getMessage() -> MD2String {
        if let _ = message {
            return message!()
        } else  {
            return defaultMessage
        }
    }
    
}