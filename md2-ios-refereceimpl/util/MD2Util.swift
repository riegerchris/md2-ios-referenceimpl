//
//  MD2Util.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 10.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Util {
    
    // Class name as String because type inspection very limited
    static func getClassName(object: Any) -> String {
        return _stdlib_getDemangledTypeName(object).componentsSeparatedByString(".").last!
    }
    
}