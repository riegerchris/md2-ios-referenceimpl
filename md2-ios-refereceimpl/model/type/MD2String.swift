//
//  MD2String.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2String: MD2DataType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    var platformValue: String?
    
    init() {
        // Nothing to initialize
    }
    
    init(_ value: String) {
        platformValue = value
    }
    
    init(_ md2String: MD2String) {
        platformValue = md2String.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func clone() -> MD2Type {
        return MD2String(self)
    }
    
    func toString() -> String {
        if platformValue == nil {
            return ""
        } else {
            return platformValue!
        }
    }
    
    func equals(value : MD2Type) -> Bool {
        return platformValue == value.toString()
    }
}