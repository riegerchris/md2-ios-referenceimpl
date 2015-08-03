//
//  MD2NumericType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2NumericType: MD2DataType {
    
    typealias NumericType
    
    func gt(value: NumericType) -> Bool

    func gte(value: NumericType) -> Bool

    func lt(value: NumericType) -> Bool

    func lte(value: NumericType) -> Bool

}