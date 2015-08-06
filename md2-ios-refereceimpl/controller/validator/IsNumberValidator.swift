//
//  IsNumberValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class IsNumberValidator {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must be a valid number!")
        }
    }
    
    init(identifier: MD2String, message: () -> MD2String) {
        self.identifier = identifier
        self.message = message
    }
    
    func isValid(value: MD2Type) -> Bool {
        return value is MD2NumericType
    }
    
    func getMessage() -> MD2String {
        if let _ = message {
            return message!()
        } else  {
            return defaultMessage
        }
    }
    
}