//
//  MD2Float.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Float: MD2NumericType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    var platformValue: Float?
    
    init() {
        // Nothing to initialize
    }
    
    required init(_ value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            platformValue = (value.platformValue! as NSString).floatValue
        }
    }
    
    init(_ value: Float) {
        platformValue = value
    }
    
    init(_ md2Float: MD2Float) {
        platformValue = md2Float.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2NumericType) -> Bool {
        if value is MD2Integer && isSet() && value.isSet() {
            return platformValue! - Float((value as! MD2Integer).platformValue!) > ModelConfig.FLOATING_ERROR
        } else if value is MD2Float && isSet() && value.isSet() {
            return platformValue! - (value as! MD2Float).platformValue! > ModelConfig.FLOATING_ERROR
        }
        return false
    }
    
    func gte(value: MD2NumericType) -> Bool {
        return gt(value) || equals(value)
    }
    
    func lt(value: MD2NumericType) -> Bool {
        if value is MD2Integer && isSet() && value.isSet() {
            return platformValue! - Float((value as! MD2Integer).platformValue!) < -1 * ModelConfig.FLOATING_ERROR
        } else if value is MD2Float && isSet() && value.isSet() {
            return platformValue! - (value as! MD2Float).platformValue! < -1 *  ModelConfig.FLOATING_ERROR
        }
        return false
    }
    
    func lte(value: MD2NumericType) -> Bool {
        return lt(value) || equals(value)
    }
    
    func clone() -> MD2Type {
        return MD2Float(self)
    }
    
    func toString() -> String {
        return platformValue != nil ? platformValue!.description : ""
    }
    
    func equals(value : MD2Type) -> Bool {
        if value is MD2Integer && isSet() && (value as! MD2Integer).isSet() {
            return abs(platformValue! - Float((value as! MD2Integer).platformValue!)) < ModelConfig.FLOATING_ERROR
        } else if value is MD2Float && isSet() && (value as! MD2Float).isSet() {
            return abs(platformValue! - Float((value as! MD2Float).platformValue!)) < ModelConfig.FLOATING_ERROR
        }
        return self.toString() == value.toString()
    }
    
}