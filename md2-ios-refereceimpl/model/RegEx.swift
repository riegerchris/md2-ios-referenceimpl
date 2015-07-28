//
//  RegEx.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 23.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//
//  Implementation adapted from http://benscheirman.com/2014/06/regex-in-swift/
//

import Foundation

infix operator =~ {}

func =~ (input: MD2String, pattern: MD2String) -> MD2Boolean {
    return RegEx(pattern: pattern).test(input)
}

class RegEx {
    let expression: NSRegularExpression?
    
    let pattern: MD2String
    
    init(pattern: MD2String) {
        self.pattern = pattern
        
        if let _ = pattern.platformValue {
            var error: NSError?
            expression = NSRegularExpression(pattern: pattern.platformValue!, options: .CaseInsensitive, error: &error)
        } else {
            expression = nil
        }
    }
    
    func test(input: MD2String) -> MD2Boolean {
        if expression == nil || !input.isSet() {
            return MD2Boolean(value: false)
        }
        
        let matches = self.expression!.matchesInString(input.platformValue!, options: nil, range:NSMakeRange(0, count(input.platformValue!)))
        return MD2Boolean(value: matches.count > 0)
    }
    
}
