//
//  MD2NumericType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2NumericType: MD2DataType {
    
    func gt(value: MD2NumericType) -> Bool

    func gte(value: MD2NumericType) -> Bool

    func lt(value: MD2NumericType) -> Bool

    func lte(value: MD2NumericType) -> Bool

}