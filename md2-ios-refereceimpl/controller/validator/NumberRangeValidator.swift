//
//  NumberRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class NumberRangeValidator {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("This value must be between \(min.toString().platformValue) and \(max.toString().platformValue)!")
        }
    }

    let min: MD2Float
    
    let max: MD2Float
    
    init(message: () -> MD2String, min: MD2Float, max: MD2Float) {
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        // Separate handling needed because check on MD2NumericType leads to error
        /* TODO if value is MD2Integer
            && (value as! MD2Integer).gte(min)
            && (value as! MD2Integer).lte(max) {
                return MD2Boolean(value: true)
        } else */ if value is MD2Float
            && (value as! MD2Float).gte(min)
            && (value as! MD2Float).lte(max) {
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