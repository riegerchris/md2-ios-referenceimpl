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
    
    func gt(value: Float) -> Bool {
        return isSet() ? platformValue! > value : false
    }
    
    func gte(value: Float) -> Bool {
        return isSet() ? platformValue! >= value : false
    }
    
    func lt(value: Float) -> Bool {
        return isSet() ? platformValue! < value : false
    }
    
    func lte(value: Float) -> Bool {
        return isSet() ? platformValue! <= value : false
    }
    
    func clone() -> MD2Type {
        return MD2Float(md2Float: self)
    }
    
    func toString() -> String {
        return platformValue != nil ? platformValue!.description : ""
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Float) && platformValue == (value as! MD2Float).platformValue
    }
    
}