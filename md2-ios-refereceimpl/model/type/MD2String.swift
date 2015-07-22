//
//  MD2String.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2String: MD2DataType {
    
    typealias ValueType = String
    
    var platformValue: String?
    
    init() {
        // Nothing to initialize
    }
    
    init(value: String) {
        platformValue = value
    }
    
    init(md2String: MD2String) {
        platformValue = md2String.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func clone() -> MD2Type {
        return MD2String(md2String: self)
    }
    
    func toString() -> String {
        return platformValue != nil ? platformValue! : ""
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2String) && platformValue == (value as! MD2String).platformValue
    }
}