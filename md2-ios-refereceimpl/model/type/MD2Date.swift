//
//  MD2Date.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Date: MD2NumericType {
    
    typealias ValueType = NSDate
    typealias NumericType = MD2Date
    
    let stringFormat = "yyyy-MM-dd"

    var platformValue: NSDate?
    
    init() {
        // Nothing to initialize
    }
    
    init(value: String) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = stringFormat
        
        platformValue = dateFormatter.dateFromString(value)
    }
    
    init(md2Date: MD2Date) {
        platformValue = md2Date.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2Date) -> Bool {
        return isSet()
            && value.isSet()
            && platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedDescending // receiver value after other value
    }
    
    func gte(value: MD2Date) -> Bool {
        return isSet()
            && value.isSet()
            && (platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedDescending ||
                platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedSame)
    }
    
    func lt(value: MD2Date) -> Bool {
        return isSet() && value.isSet()
            && platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedAscending
    }
    
    func lte(value: MD2Date) -> Bool {
        return isSet()
            && value.isSet()
            && (platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedAscending ||
                platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedSame)
     }
    
    func clone() -> MD2Type {
        return MD2Date(md2Date: self)
    }
    
    func toString() -> MD2String {
        if platformValue == nil {
            return MD2String(value: "")
        }
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = stringFormat
        
        return MD2String(value: dateFormatter.stringFromDate(platformValue!))
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Date) && gte(value as! MD2Date) && lte(value as! MD2Date)
    }
    
}