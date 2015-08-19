//
//  MD2Address.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

// Make class visible for Objective-C to work with Core Data persistence framework
@objc(MD2Address)
class MD2Address: NSObject, MD2EntityType {
    
    var internalId: MD2Integer = MD2Integer()
    
    var containedTypes: Dictionary<String,MD2Type> = [:]
    
    required override init() {
        // Initialize address fields
        containedTypes["myStreet"] = MD2String()
        containedTypes["myStreetNo"] = MD2String()
        containedTypes["myPostalCode"] = MD2String()
        containedTypes["myCity"] = MD2String()
        containedTypes["myCountry"] = MD2String()
        containedTypes["latitude"] = MD2Float()
        containedTypes["longitude"] = MD2Float()
    }
    
    convenience init(md2Entity: MD2Address) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return MD2Address(md2Entity: self)
    }
    
    func toString() -> String {
        return "(Address: [myStreet: " + containedTypes["myStreet"]!.toString()
            + ", myStreetNo: " + containedTypes["myStreetNo"]!.toString()
            + ", myPostalCode: " + containedTypes["myPostalCode"]!.toString()
            + ", myCity: " + containedTypes["myCity"]!.toString()
            + ", myCountry: " + containedTypes["myCountry"]!.toString()
            + ", latitude: " + containedTypes["latitude"]!.toString()
            + ", longitude: " + containedTypes["longitude"]!.toString()
            + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Address) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Address).containedTypes {
            if !(containedTypes[typeName] != nil && containedTypes[typeName]!.equals(typeValue)) {
                isEqual = false
                break
            }
        }
        
        return isEqual
    }
    
    func get(attribute: String) -> MD2Type? {
        return containedTypes[attribute]
    }
    
    func set(attribute: String, value: MD2Type) {
        containedTypes[attribute] = value
    }
    
}