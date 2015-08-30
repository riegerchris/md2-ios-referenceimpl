//
//  MD2Entity___ProcessChainControllerState.swift
//
//  Generated code by class 'IOSEntity' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

import Foundation

// Make class visible for Objective-C to work with Core Data persistence framework
@objc(MD2Entity___ProcessChainControllerState)
class MD2Entity___ProcessChainControllerState: NSObject, MD2EntityType {

	var internalId: MD2Integer = MD2Integer()
    
    var containedTypes: Dictionary<String, MD2Type> = [:]
    
    required override init() {
        // Initialize fields
        containedTypes["currentProcessChainStep"] = MD2String()
        containedTypes["lastEventFired"] = MD2String()
    }
    
    convenience init(md2Entity: MD2Entity___ProcessChainControllerState) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    func clone() -> MD2Type {
        return MD2Entity___ProcessChainControllerState(md2Entity: self)
    }
    
    func toString() -> String {
        return "(MD2Entity___ProcessChainControllerState: [currentProcessChainStep: " + containedTypes["currentProcessChainStep"]!.toString()
        + ", lastEventFired: " + containedTypes["lastEventFired"]!.toString() 
	        + "])"
    }
    
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Entity___ProcessChainControllerState) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Entity___ProcessChainControllerState).containedTypes {
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
    		fatalError("Tried to set non-existing attribute in entity type MD2Entity___ProcessChainControllerState")
    	}
        containedTypes[attribute] = value
    }
}
