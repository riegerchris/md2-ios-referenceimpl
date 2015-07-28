//
//  MD2Time.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Time: MD2NumericType {
    
    typealias ValueType = NSDate
    typealias NumericType = MD2Time
    
    let stringFormat = "HH:mm:ss"
    
    var platformValue: NSDate?
    
    init() {
        // Nothing to initialize
    }
    
    init(_ value: String) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = stringFormat
        
        platformValue = dateFormatter.dateFromString(value)
    }
    
    init(_ md2Time: MD2Time) {
        platformValue = md2Time.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2Time) -> Bool {
        return isSet()
            && value.isSet()
            && platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedDescending // receiver value after other value
    }
    
    func gte(value: MD2Time) -> Bool {
        return isSet()
            && value.isSet()
            && (platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedDescending ||
                platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedSame)
    }
    
    func lt(value: MD2Time) -> Bool {
        return isSet() && value.isSet()
            && platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedAscending
    }
    
    func lte(value: MD2Time) -> Bool {
        return isSet()
            && value.isSet()
            && (platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedAscending ||
                platformValue!.compare(value.platformValue!) == NSComparisonResult.OrderedSame)
    }
    
    func clone() -> MD2Type {
        return MD2Time(self)
    }
    
    func toString() -> MD2String {
        if platformValue == nil {
            return MD2String("")
        }
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = stringFormat
        
        return MD2String(dateFormatter.stringFromDate(platformValue!))
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Time) && gte(value as! MD2Time) && lte(value as! MD2Time)
    }
    
}