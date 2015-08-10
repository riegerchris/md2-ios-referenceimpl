//
//  Complaint.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class Complaint: MD2EntityType {
    
    var containedTypes: Dictionary<String,MD2Type> = [:]
    
    init() {
        // Initialize complaint fields
        containedTypes["loc"] = Address()
        containedTypes["descriptions"] = MD2String()
        containedTypes["feedback"] = MD2String()
        containedTypes["status"] = ComplaintStatus()
    }
    
    convenience init(md2Entity: Complaint) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return Complaint(md2Entity: self)
    }
    
    func toString() -> String {
        return "(Complaint: [loc: " + containedTypes["loc"]!.toString()
            + ", descriptions: " + containedTypes["descriptions"]!.toString()
            + ", feedback: " + containedTypes["feedback"]!.toString()
            + ", status: " + containedTypes["status"]!.toString()
            + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is Complaint) {
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