//
//  MD2Integer.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Integer: MD2NumericType {
    
    var value: Any? {
        get {
            return platformValue
        }
    }
    
    var platformValue: Int?
    
    init() {
        // Nothing to initialize
    }
    
    init(_ value : Int){
        platformValue = value
    }
    
    required init(_ value: MD2String) {
        if value.isSet() && !value.equals(MD2String("")) {
            platformValue = (value.platformValue! as NSString).integerValue
        }
    }
    
    init(_ md2Integer: MD2Integer) {
        platformValue = md2Integer.platformValue
    }
    
    func isSet() -> Bool {
        return platformValue != nil
    }
    
    func gt(value: MD2NumericType) -> Bool {
        if value is MD2Integer && isSet() && value.isSet() {
            return platformValue! > (value as! MD2Integer).platformValue!
        } else if value is MD2Float && isSet() && value.isSet() {
            return platformValue! > Int((value as! MD2Float).platformValue!)
        }
        return false
    }
    
    func gte(value: MD2NumericType) -> Bool {
        return gt(value) || equals(value)
    }
    
    func lt(value: MD2NumericType) -> Bool {
        if value is MD2Integer && isSet() && value.isSet() {
            return platformValue! < (value as! MD2Integer).platformValue!
        } else if value is MD2Float && isSet() && value.isSet() {
            return platformValue! < Int((value as! MD2Float).platformValue!)
        }
        return false
    }
    
    func lte(value: MD2NumericType) -> Bool {
        return lt(value) || equals(value)
    }
    
    func clone() -> MD2Type {
        return MD2Integer(self)
    }
    
    func toString() -> String {
        if !isSet() {
            return ""
        }
        
        return String(platformValue!)
    }
    
    func equals(value : MD2Type) -> Bool {
        if value is MD2Integer && isSet() && (value as! MD2Integer).isSet() {
            return platformValue == (value as! MD2Integer).platformValue
        } else if value is MD2Float && isSet() && (value as! MD2Float).isSet() {
            return platformValue == Int((value as! MD2Float).platformValue!)
        }
        return self.toString() == value.toString()
    }

}