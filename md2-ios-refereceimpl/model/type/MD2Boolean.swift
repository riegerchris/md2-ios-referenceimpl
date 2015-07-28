//
//  MD2Boolean.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Boolean: MD2DataType {
    
    typealias ValueType = Bool
    
    var platformValue: Bool?
    
    init() {
        // Nothing to initialize
    }
    
    init(_ value : Bool) {
        platformValue = value
    }
    
    init(_ md2Boolean: MD2Boolean) {
        platformValue = md2Boolean.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func clone() -> MD2Type {
        return MD2Boolean(self)
    }
    
    func toString() -> MD2String {
        if platformValue == nil {
            return MD2String("")
        }
        
        return platformValue == true ? MD2String("true") : MD2String("false")
    }
    
    func equals(value : MD2Type) -> Bool {
        return (value is MD2Boolean) && platformValue == (value as! MD2Boolean).platformValue
    }

}