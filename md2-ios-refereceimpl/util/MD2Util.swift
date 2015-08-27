//
//  MD2Util.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 10.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

class MD2Util {
    
    // Class name as String because type inspection very limited
    static func getClassName(object: Any) -> String {
        return _stdlib_getDemangledTypeName(object).componentsSeparatedByString(".").last!
    }
    
    // May be used for synchronous webservice call
    // See http://stackoverflow.com/questions/30992363/turn-sharedloader-function-into-a-normal-function
    static func syncFromAsync<R>(async: (handler: R -> Void) -> Void) -> R {
        let group = dispatch_group_create()
        var result : R!
        
        func handler(r : R) {
            result = r
            dispatch_group_leave(group)
        }
        
        dispatch_group_enter(group)
        async(handler: handler)
        dispatch_group_wait(group, DISPATCH_TIME_FOREVER)
        
        return result
    }
    
}