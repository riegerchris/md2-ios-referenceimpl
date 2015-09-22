//
//  MD2Entity_Complaint.swift
//
//  Generated code by class 'IOSEntity' on 22.09.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

import Foundation

// Make class visible for Objective-C to work with Core Data persistence framework
@objc(MD2Entity_Complaint)
class MD2Entity_Complaint: NSObject, MD2Entity {
	
	var md2ClassName: String = "Complaint"

	var internalId: MD2Integer = MD2Integer()
    
    var containedTypes: Dictionary<String, MD2Type> = [:]
    
    required override init() {
        // Initialize fields
        containedTypes["descriptions"] = MD2String()
        containedTypes["feedback"] = MD2String()
        containedTypes["status"] = MD2String()
    }
    
    convenience init(md2Entity: MD2Entity_Complaint) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return MD2Entity_Complaint(md2Entity: self)
    }
    
    func toString() -> String {
    return "(MD2Entity_Complaint: [descriptions: " + containedTypes["descriptions"]!.toString()
    + ", feedback: " + containedTypes["feedback"]!.toString()
    + ", status: " + containedTypes["status"]!.toString() 
	        + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Entity_Complaint) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Entity_Complaint).containedTypes {
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
    	// Check if attribute exists
    	if containedTypes[attribute] == nil {
    		fatalError("Tried to set non-existing attribute in entity type MD2Entity_Complaint")
    	}
        containedTypes[attribute] = value
    }
}
