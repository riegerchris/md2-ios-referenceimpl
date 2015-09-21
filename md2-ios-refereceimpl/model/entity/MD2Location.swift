//
//  MD2Location.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Location: MD2Entity {
    
    var internalId: MD2Integer = MD2Integer()
    
    var containeds: Dictionary<String,MD2Type> = [:]
    
    required init() {
        // Initialize location fields
        containeds["longitude"] = MD2Float(0.0)
        containeds["latitude"] = MD2Float(0.0)
    }
    
    convenience init(md2Entity: MD2Location) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containeds {
            containeds[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return MD2Location(md2Entity: self)
    }
    
    func toString() -> String {
        return "(Location: [longitude: " + containeds["longitude"]!.toString()
            + ", latitude: " + containeds["latitude"]!.toString()
            + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Location) {
            return false
        }

        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Location).containeds {
            if !(containeds[typeName] != nil && containeds[typeName]!.equals(typeValue)) {
                isEqual = false
                break
            }
        }
        
        return isEqual
    }
    
    func get(attribute: String) -> MD2Type? {
        return containeds[attribute]
    }
    
    func set(attribute: String, value: MD2Type) {
        containeds[attribute] = value
    }
    
}