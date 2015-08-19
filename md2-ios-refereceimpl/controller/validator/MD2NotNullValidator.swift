//
//  MD2NotNullValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2NotNullValidator: MD2ValidatorType {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String = MD2String("This value must not be empty!")
    
    init(identifier: MD2String, message: () -> MD2String) {
        self.identifier = identifier
        self.message = message
    }
    
    func isValid(value: MD2Type) -> Bool {
        if value.equals(MD2String("")) {
            return false
        } else {
            return true
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