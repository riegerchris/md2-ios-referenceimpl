//
//  ComplaintStatus.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ComplaintStatus: MD2EnumType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    var platformValue: ComplaintStatus.EnumType?
    
    init() {
        // Nothing to initialize
    }
    
    func setValueFromString(value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            platformValue = EnumType.fromRawValue(value.toString())
        }
    }
    
    func clone() -> MD2Type {
        var newComplaintStatus = ComplaintStatus()
        newComplaintStatus.platformValue = self.platformValue
        return newComplaintStatus
    }
    
    func toString() -> String {
        if let _ = platformValue {
            return "ComplaintStatus: [" + platformValue!.rawValue + "]"
        } else {
            return "ComplaintStatus: []"
        }
    }
    
    func equals(value : MD2Type) -> Bool {
        return platformValue != nil
                && value is ComplaintStatus
                && platformValue?.rawValue == (value as! ComplaintStatus).platformValue?.rawValue
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
        for elem in ComplaintStatus.EnumType.allValues {
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