//
//  DateRangeValidator.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DateRangeValidator {
    
    var message: (() -> MD2String)?
    
    var defaultMessage: MD2String {
        get {
            return MD2String(value: "The date must be between \(min.toString().platformValue) and \(max.toString().platformValue)!")
        }
    }
    
    let min: MD2Date
    
    let max: MD2Date
    
    init(message: () -> MD2String, min: MD2Date, max: MD2Date) {
        self.message = message
        self.min = min
        self.max = max
    }
    
    func isValid(value: MD2Type) -> MD2Boolean {
        if value is MD2Date
            && (value as! MD2Date).gte(min)
            && (value as! MD2Date).lte(max) {
                return MD2Boolean(value: true)
        } else {
            return MD2Boolean(value: false)
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