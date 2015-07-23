//
//  MD2Float.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Float: MD2NumericType {
    
    typealias ValueType = Float
    
    var platformValue: Float?
    
    init() {
        // Nothing to initialize
    }
    
    init(value: Float) {
        platformValue = value
    }
    
    init(md2Float: MD2Float) {
        platformValue = md2Float.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2Float) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! > value.platformValue : false
    }
    
    func gte(value: MD2Float) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! >= value.platformValue : false
    }
    
    func lt(value: MD2Float) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! < value.platformValue : false
    }
    
    func lte(value: MD2Float) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! <= value.platformValue : false
    }
    
    func clone() -> MD2Type {
        return MD2Float(md2Float: self)
    }
    
    func toString() -> MD2String {
        return platformValue != nil ? MD2String(value: platformValue!.description) : MD2String(value: "")
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Float) && platformValue == (value as! MD2Float).platformValue
    }
    
}