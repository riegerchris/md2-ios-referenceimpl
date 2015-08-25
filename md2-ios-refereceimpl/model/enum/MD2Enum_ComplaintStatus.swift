//
//  MD2Enum_ComplaintStatus.swift
//
//  Generated code by class 'IOSEnum' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2Enum_ComplaintStatus: MD2EnumType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    var platformValue: MD2Enum_ComplaintStatus.EnumType?
    
    init() {
        // Nothing to initialize
    }
    
    func setValueFromString(value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            platformValue = EnumType.fromRawValue(value.toString())
        }
    }
    
    func clone() -> MD2Type {
        var newInstance = MD2Enum_ComplaintStatus()
        newInstance.platformValue = self.platformValue
        return newInstance
    }
    
    func toString() -> String {
        if let _ = platformValue {
            return "MD2Enum_ComplaintStatus: [" + platformValue!.rawValue + "]"
        } else {
            return "MD2Enum_ComplaintStatus: []"
        }
    }
    
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
        
        static let allValues = [Elem1, Elem2, Elem3, Elem4]
        
        static func fromRawValue(value: String) -> EnumType? {
            switch value {
            	case "User is filling out complaint": return Elem1
            	case "Complaint is sent to administration": return Elem2
            	case "Complaint is in process": return Elem3
            	case "Complaint has been handled by the administration": return Elem4
            	default: return nil
            }
        }
    }
    
    func getAllValues() -> Array<String> {
        var array: Array<String> = []
        for elem in MD2Enum_ComplaintStatus.EnumType.allValues {
            array.append(elem.rawValue)
        }
        return array
    }
    
    func getValue() -> String {
        if let _ = platformValue {
            return platformValue!.rawValue
        } else {
            return ""
        }
    }
}
