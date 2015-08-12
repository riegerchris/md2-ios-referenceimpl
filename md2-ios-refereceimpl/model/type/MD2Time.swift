//
//  MD2Time.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Time: MD2TemporalType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    let stringFormat = "HH:mm:ss"
    
    var platformValue: NSDate?
    
    init() {
        // Nothing to initialize
    }
    
    required init(_ value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            var dateFormatter = NSDateFormatter()
            dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
            dateFormatter.dateFormat = stringFormat
            
            platformValue = dateFormatter.dateFromString(value.platformValue!)
        }
    }
    
    convenience init(_ value: String) {
        self.init(MD2String(value))
    }
    
    init(_ md2Time: MD2Time) {
        platformValue = md2Time.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2TemporalType) -> Bool {
        if value is MD2Time && isSet() && value.isSet() {
            // self.platformValue after the parameter value
            return platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedDescending
        }
        
        return false
    }
    
    func gte(value: MD2TemporalType) -> Bool {
        if value is MD2Time && isSet() && value.isSet() {
            return (platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedDescending ||
                platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedSame)
        }
        
        return false
    }
    
    func lt(value: MD2TemporalType) -> Bool {
        if value is MD2Time && isSet() && value.isSet() {
            return platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedAscending
        }
        
        return false
    }
    
    func lte(value: MD2TemporalType) -> Bool {
        if value is MD2Time && isSet() && value.isSet() {
            return (platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedAscending ||
                platformValue!.compare((value as! MD2Time).platformValue!) == NSComparisonResult.OrderedSame)
        }
        
        return false
    }
    
    func clone() -> MD2Type {
        return MD2Time(self)
    }
    
    func toString() -> String {
        if platformValue == nil {
            return ""
        }
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.defaultTimeZone()
        dateFormatter.dateFormat = stringFormat
        
        return dateFormatter.stringFromDate(platformValue!)
    }
    
    func equals(value : MD2Type) -> Bool {
        if value is MD2TemporalType {
            return gte((value as! MD2TemporalType)) && lte((value as! MD2TemporalType))
        } else {
            return toString() == value.toString()
        }
    }
    
}