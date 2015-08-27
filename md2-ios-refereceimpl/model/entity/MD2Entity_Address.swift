//
//  MD2Entity_Address.swift
//
//  Generated code by class 'IOSEntity' on 27.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

import Foundation

// Make class visible for Objective-C to work with Core Data persistence framework
@objc(MD2Entity_Address)
class MD2Entity_Address: NSObject, MD2EntityType {

	var internalId: MD2Integer = MD2Integer()
    
    var containedTypes: Dictionary<String, MD2Type> = [:]
    
    required override init() {
        // Initialize fields
        containedTypes["myStreet"] = MD2String()
        containedTypes["myStreetNo"] = MD2String()
        containedTypes["myPostalCode"] = MD2String()
        containedTypes["myCity"] = MD2String()
        containedTypes["myCountry"] = MD2String()
        containedTypes["myLatitude"] = MD2Float()
        containedTypes["myLongitude"] = MD2Float()
    }
    
    convenience init(md2Entity: MD2Entity_Address) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return MD2Entity_Address(md2Entity: self)
    }
    
    func toString() -> String {
        return "(MD2Entity_Address: [myStreet: " + containedTypes["myStreet"]!.toString()
        + ", myStreetNo: " + containedTypes["myStreetNo"]!.toString()
        + ", myPostalCode: " + containedTypes["myPostalCode"]!.toString()
        + ", myCity: " + containedTypes["myCity"]!.toString()
        + ", myCountry: " + containedTypes["myCountry"]!.toString()
        + ", myLatitude: " + containedTypes["myLatitude"]!.toString()
        + ", myLongitude: " + containedTypes["myLongitude"]!.toString() 
	        + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Entity_Address) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Entity_Address).containedTypes {
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
    		fatalError("Tried to set non-existing attribute in entity type MD2Entity_Address")
    	}
        containedTypes[attribute] = value
    }
}
