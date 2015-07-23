//
//  MD2Integer.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Integer: MD2NumericType {
    
    typealias ValueType = Int
    typealias NumericType = MD2Integer
    
    var platformValue: Int?
    
    init() {
        // Nothing to initialize
    }
    
    init(md2Integer: MD2Integer) {
        platformValue = md2Integer.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2Integer) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! > value.platformValue : false
    }
    
    func gte(value: MD2Integer) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! >= value.platformValue : false
    }
    
    func lt(value: MD2Integer) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! < value.platformValue : false
    }
    
    func lte(value: MD2Integer) -> Bool {
        return (isSet() && value.isSet()) ? platformValue! <= value.platformValue : false
    }
    
    func clone() -> MD2Type {
        return MD2Integer(md2Integer: self)
    }
    
    func toString() -> MD2String {
        return platformValue != nil ? MD2String(value: String(platformValue!)) : MD2String(value: "")
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Integer) && platformValue == (value as! MD2Integer).platformValue
    }

}