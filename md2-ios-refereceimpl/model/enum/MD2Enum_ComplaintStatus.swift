//
//  MD2Enum_ComplaintStatus.swift
//
//  Generated code by class 'IOSEnum' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 15.08.2015 
//

/// Interface for the MD2Enum_ComplaintStatus data type.
class MD2Enum_ComplaintStatus: MD2Enum {
    
    /**
        Unfortunately, a platformValue cannot be specified as attribute of the interface MD2DataType according to the reference architecture because enumeration types are distinct first-level types.
    
        Reason: Specifying a generic type, e.g. via typealias does not work in Swift yet because subsequent methods will not accept MD2DataType as input anymore (error: Protocol of type MD2DataType can only be used as generic constraint...).
    
        Using type Any? instead is the only viable option although of limited help as type casting needs to be done twice on every element like this: ((value as! MD2Integer).platformValue as! Int) which is cumbersome. In addition, it does not even enforce a specific type either but may instead cause runtime errors if the platformValue was set directly using the "wrong" type. A property oberser could check this but again relies on the actual implementation and cannot be specified here.
    */
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    /// The enumeration type value.
    var platformValue: MD2Enum_ComplaintStatus.EnumType?
    
    /// Empty initializer.
    init() {
        // Nothing to initialize
    }
    
    /**
        Deserialize the string representation to an enumeration value.
        
        :param: value The string representation to use.
    */
    func setValueFromString(value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            platformValue = EnumType.fromRawValue(value.toString())
        }
    }
    
    /**
        Clone an object.
        
        :returns: A copy of the object.
    */
    func clone() -> MD2Type {
        var newInstance = MD2Enum_ComplaintStatus()
        newInstance.platformValue = self.platformValue
        return newInstance
    }
    
    /**
        Get a string representation of the object.
        
        :returns: The string representation
    */
    func toString() -> String {
        if let _ = platformValue {
            return "MD2Enum_ComplaintStatus: [" + platformValue!.rawValue + "]"
        } else {
            return "MD2Enum_ComplaintStatus: []"
        }
    }
    
    /**
        Serialization of an enumeration value to integer.
        
        :returns: The integer value.
    */
    func toInt() -> Int {
        if let _ = platformValue {
            return platformValue!.toInt
        } else {
            return 0
        }
    }
    
    /**
        Deserialization from an integer value.
        
        :param: value The value to convert to an enumeration.
    */
    func setValueFromInt(value: Int) {
        platformValue = EnumType.fromInt(value)
    }
    
    /**
        Compare two objects based on their content (not just comparing references).
        
        :param: value The object to compare with.
        
        :returns: Whether the values are equal or not.
    */
    func equals(value : MD2Type) -> Bool {
        return platformValue != nil
                && value is MD2Enum_ComplaintStatus
                && platformValue?.rawValue == (value as! MD2Enum_ComplaintStatus).platformValue?.rawValue
    }
    
    enum EnumType: String {
    	case Elem1 = "User is filling out complaint"
    	case Elem2 = "Complaint is sent to administration"
    	case Elem3 = "Complaint is in process"
    	case Elem4 = "Complaint has been handled by the administration"
        
        /// Helper property due to missing enum introspection in Swift. Array to list all possible enum values.
        static let allValues = [Elem1, Elem2, Elem3, Elem4]
        
        /**
            Create an enum value from its string representation.
            
            :param: value The string representation.
            
            :returns: The enumeration value.
        */
        static func fromRawValue(value: String) -> EnumType? {
            switch value {
            	case "User is filling out complaint": return Elem1
            	case "Complaint is sent to administration": return Elem2
            	case "Complaint is in process": return Elem3
            	case "Complaint has been handled by the administration": return Elem4
            	default: return nil
            }
        }
        
        /// Computed property to serialize the enumeration value to an integer value.
        var toInt: Int {
            switch self {
	            case Elem1: return 1
	            case Elem2: return 2
	            case Elem3: return 3
	            case Elem4: return 4
            }
        }
        
        /**
            Create an enum value from its integer representation.
            
            :param: value The integer value.
            
            :returns: The enumeration value.
        */
        static func fromInt(value: Int) -> EnumType? {
            switch value {
            	case 1: return Elem1
            	case 2: return Elem2
            	case 3: return Elem3
            	case 4: return Elem4
            	default: return nil
            }
        }
    }
    
    /**
        Helper function due to missing introspection capabilities: Retrieve a list of all enumeration values.
        
        :returns: List of string values
    */
    func getAllValues() -> Array<String> {
        var array: Array<String> = []
        for elem in MD2Enum_ComplaintStatus.EnumType.allValues {
            array.append(elem.rawValue)
        }
        return array
    }
    
    /**
        Get a string representation of the enumeration value.
        
        :returns: The string representation.
    */
    func getValue() -> String {
        if let _ = platformValue {
            return platformValue!.rawValue
        } else {
            return ""
        }
    }
}
