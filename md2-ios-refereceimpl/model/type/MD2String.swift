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
    
    required init(_ value: MD2String) {
        if value.isSet() {
            platformValue = value.platformValue!
        }
    }
    
    init(_ value: String) {
        platformValue = value
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
        if platformValue == nil {
            return "" == value.toString()
        }
        
        return platformValue == value.toString()
    }
}