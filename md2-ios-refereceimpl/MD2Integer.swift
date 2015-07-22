//
//  MD2Integer.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Integer: MD2NumericType {
    
    typealias ValueType = Int
    
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
    
    func gt(value: Int) -> Bool {
        return isSet() ? platformValue! > value : false
    }
    
    func gte(value: Int) -> Bool {
        return isSet() ? platformValue! >= value : false
    }
    
    func lt(value: Int) -> Bool {
        return isSet() ? platformValue! < value : false
    }
    
    func lte(value: Int) -> Bool {
        return isSet() ? platformValue! <= value : false
    }
    
    func clone() -> MD2Type {
        return MD2Integer(md2Integer: self)
    }
    
    func toString() -> String {
        return platformValue != nil ? String(platformValue!) : ""
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Integer) && platformValue == (value as! MD2Integer).platformValue
    }

}