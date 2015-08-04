//
//  ComplaintStatus.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 29.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ComplaintStatus: MD2EnumType {
    
    typealias T = ComplaintStatus.EnumType
    
    var platformValue: ComplaintStatus.EnumType?
    
    func clone() -> MD2Type {
        var newComplaintStatus = ComplaintStatus()
        newComplaintStatus.platformValue = self.platformValue
        return newComplaintStatus
    }
    
    func toString() -> MD2String {
        if let _ = platformValue {
            return MD2String(platformValue!.rawValue)
        } else {
            return MD2String()
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
    }
    
    func getAllValues() -> Array<String> {
        var array: Array<String> = []
        for elem in ComplaintStatus.EnumType.allValues {
            array.append(elem.rawValue)
        }
        return array
    }
}