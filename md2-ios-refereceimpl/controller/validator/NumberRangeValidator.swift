//
//  NumberRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class NumberRangeValidator {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must be between \(min.toString()) and \(max.toString())!")
        }
    }

    let min: MD2Float
    
    let max: MD2Float
    
    init(identifier: MD2String, message: () -> MD2String, min: MD2Float, max: MD2Float) {
        self.identifier = identifier
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> Bool {
        if value is MD2NumericType
            && (value as! MD2NumericType).gte(min)
            && (value as! MD2NumericType).lte(max) {
                return true
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