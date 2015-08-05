//
//  MD2Date.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Date: MD2TemporalType {
    
    let stringFormat = "yyyy-MM-dd"

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
    
    init(_ md2Date: MD2Date) {
        platformValue = md2Date.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2TemporalType) -> Bool {
        if value is MD2Date || value is MD2DateTime {
            return isSet()
                && value.isSet()
                && platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedDescending // receiver value is after other value
        }
        
        // Cannot compare date with time
        return false
    }
    
    func gte(value: MD2TemporalType) -> Bool {
        if value is MD2Date {
            return isSet()
                && value.isSet()
                && (platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedDescending ||
                    platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedSame)
        } else if value is MD2DateTime {
            return isSet()
                && value.isSet()
                && (platformValue!.compare((value as! MD2DateTime).platformValue!) == NSComparisonResult.OrderedDescending ||
                    platformValue!.compare((value as! MD2DateTime).platformValue!) == NSComparisonResult.OrderedSame)
        }
        
        // Cannot compare date with time
        return false
    }
    
    func lt(value: MD2TemporalType) -> Bool {
        if value is MD2Date {
            return isSet() && value.isSet()
                && platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedAscending
        } else if value is MD2DateTime {
            return isSet() && value.isSet()
                && platformValue!.compare((value as! MD2DateTime).platformValue!) == NSComparisonResult.OrderedAscending
        }
        
        // Cannot compare date with time
        return false
    }
    
    func lte(value: MD2TemporalType) -> Bool {
        if value is MD2Date {
            return isSet()
                && value.isSet()
                && (platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedAscending ||
                    platformValue!.compare((value as! MD2Date).platformValue!) == NSComparisonResult.OrderedSame)
        } else if value is MD2DateTime {
            return isSet()
                && value.isSet()
                && (platformValue!.compare((value as! MD2DateTime).platformValue!) == NSComparisonResult.OrderedAscending ||
                    platformValue!.compare((value as! MD2DateTime).platformValue!) == NSComparisonResult.OrderedSame)
        }
        
        // Cannot compare date with time
        return false
    }
    
    func clone() -> MD2Type {
        return MD2Date(self)
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