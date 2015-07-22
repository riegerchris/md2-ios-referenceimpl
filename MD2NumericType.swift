//
//  MD2NumericType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2NumericType: MD2DataType {
    
    typealias ValueType
    
    func gt(value: ValueType) -> Bool

    func gte(value: ValueType) -> Bool

    func lt(value: ValueType) -> Bool

    func lte(value: ValueType) -> Bool

}