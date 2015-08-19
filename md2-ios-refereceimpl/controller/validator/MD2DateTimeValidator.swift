//
//  MD2DateDateTimeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2DateTimeRangeValidator {
    
    let identifier: MD2String
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("The date and time must be between \(min.toString()) and \(max.toString())!")
        }
    }
    
    let min: MD2DateTime
    
    let max: MD2DateTime
    
    init(identifier: MD2String, message: () -> MD2String, min: MD2DateTime, max: MD2DateTime) {
        self.identifier = identifier
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> Bool {
        if value is MD2DateTime
            && (value as! MD2DateTime).gte(min)
            && (value as! MD2DateTime).lte(max) {
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