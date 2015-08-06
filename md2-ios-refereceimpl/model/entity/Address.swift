//
//  Address.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class Address: MD2EntityType {
    
    var containedTypes: Dictionary<String,MD2Type> = [:]
    
    init() {
        // Initialize address fields
        containedTypes["myStreet"] = MD2String()
        containedTypes["myStreetNo"] = MD2String()
        containedTypes["myPostalCode"] = MD2String()
        containedTypes["myCity"] = MD2String()
        containedTypes["myLocation"] = Location()
    }
    
    init(md2Entity: Address) {
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return Address(md2Entity: self)
    }
    
    func toString() -> String {
        return "(Address: [myStreet: " + containedTypes["myStreet"]!.toString()
            + ", myStreetNo: " + containedTypes["myStreetNo"]!.toString()
            + ", myPostalCode: " + containedTypes["myPostalCode"]!.toString()
            + ", myCity: " + containedTypes["myCity"]!.toString()
            + ", myLocation: " + containedTypes["myLocation"]!.toString()
            + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is Address) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! Complaint).containedTypes {
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