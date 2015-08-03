//
//  DateDateTimeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DateTimeRangeValidator {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String("The date and time must be between \(min.toString().platformValue) and \(max.toString().platformValue)!")
        }
    }
    
    let min: MD2DateTime
    
    let max: MD2DateTime
    
    init(message: () -> MD2String, min: MD2DateTime, max: MD2DateTime) {
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if value is MD2DateTime
            && (value as! MD2DateTime).gte(min)
            && (value as! MD2DateTime).lte(max) {
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