//
//  MD2TimeRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2TimeRangeValidator: MD2ValidatorType {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("The time must be between \(min.toString()) and \(max.toString())!")
        }
    }
    
    let min: MD2Time
    
    let max: MD2Time
    
    init(identifier: MD2String, message: (() -> MD2String)?, min: MD2Time, max: MD2Time) {
        self.identifier = identifier
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> Bool {
        if value is MD2Time
            && (value as! MD2Time).gte(min)
            && (value as! MD2Time).lte(max) {
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