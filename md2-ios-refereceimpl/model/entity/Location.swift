//
//  Location.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class Location: MD2EntityType {
    
    var internalId: MD2Integer = MD2Integer()
    
    var containedTypes: Dictionary<String,MD2Type> = [:]
    
    required init() {
        // Initialize location fields
        containedTypes["longitude"] = MD2Float(0.0)
        containedTypes["latitude"] = MD2Float(0.0)
    }
    
    convenience init(md2Entity: Location) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return Location(md2Entity: self)
    }
    
    func toString() -> String {
        return "(Location: [longitude: " + containedTypes["longitude"]!.toString()
            + ", latitude: " + containedTypes["latitude"]!.toString()
            + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is Location) {
            return false
        }

        var isEqual = true
        
        for (typeName, typeValue) in (value as! Location).containedTypes {
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