//
//  MD2Entity___ReturnStepStack.swift
//
//  Generated code by class 'IOSEntity' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

import Foundation

/**
    Model-specific entity class.
    
    *Objc* Make class visible for Objective-C to work with Core Data persistence framework
*/
@objc(MD2Entity___ReturnStepStack)
class MD2Entity___ReturnStepStack: NSObject, MD2Entity {
	
	/// Original class name in the MD2 model
	var md2ClassName: String = "__ReturnStepStack"
    
    /// The internal value of the entity object, set when the data store creates an Id after first saving the object.
    var internalId: MD2Integer = MD2Integer()
    
    /// Key-value list of contained attributes.
    var containedTypes: Dictionary<String, MD2Type> = [:]
    
    /// Empty initializer is required.
    required override init() {
        // Initialize fields
        containedTypes["returnStep"] = MD2String()
        containedTypes["returnAndReverseStep"] = MD2String()
        containedTypes["returnAndProceedStep"] = MD2String()
        containedTypes["tail"] = MD2String()
    }
    
    /**
        Initializer to create an object from the same data type (=copy).

        :param: md2Entity The entity to copy.
    */
    convenience init(md2Entity: MD2Entity___ReturnStepStack) {
        self.init()
        
        for (typeName, typeValue) in md2Entity.containedTypes {
            containedTypes[typeName] = typeValue.clone()
        }
    }
    
    /**
        Clone an object.
    
        :returns: A copy of the object.
    */
    func clone() -> MD2Type {
        return MD2Entity___ReturnStepStack(md2Entity: self)
    }
    
    /**
        Get a string representation of the object.
    
        :returns: The string representation
    */
    func toString() -> String {
    return "(MD2Entity___ReturnStepStack: [returnStep: " + containedTypes["returnStep"]!.toString()
    + ", returnAndReverseStep: " + containedTypes["returnAndReverseStep"]!.toString()
    + ", returnAndProceedStep: " + containedTypes["returnAndProceedStep"]!.toString()
    + ", tail: " + containedTypes["tail"]!.toString() 
	        + "])"
    }
    
    /**
        Compare two objects based on their content (not just comparing references).
    
        :param: value The object to compare with.
    
        :returns: Whether the values are equal or not.
    */
    func equals(value : MD2Type) -> Bool {
        if !(value is MD2Entity___ReturnStepStack) {
            return false
        }
        
        var isEqual = true
        
        for (typeName, typeValue) in (value as! MD2Entity___ReturnStepStack).containedTypes {
            if !(containedTypes[typeName] != nil && containedTypes[typeName]!.equals(typeValue)) {
                isEqual = false
                break
            }
        }
        
        return isEqual
    }
    
    /**
        Retrieve an attribute value.
    
        :param: attribute The attribute name.
    
        :returns: The attribute value if found.
    */
    func get(attribute: String) -> MD2Type? {
        return containedTypes[attribute]
    }
    
    /**
        Set an attribute value.
    
        :param: attribute The attribute name.
        :param: value The value to set.
    */
    func set(attribute: String, value: MD2Type) {
    	// Check if attribute exists
    	if containedTypes[attribute] == nil {
    		fatalError("Tried to set non-existing attribute in entity type MD2Entity___ReturnStepStack")
    	}
        containedTypes[attribute] = value
    }
}
