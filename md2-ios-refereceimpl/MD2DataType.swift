//
//  MD2DataType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataType: MD2Type {
    
    typealias ValueType
    
    var platformValue: ValueType? { get }
    
    func isSet() -> Bool
    
}