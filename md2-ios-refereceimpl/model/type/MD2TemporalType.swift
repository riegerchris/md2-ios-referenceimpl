//
//  MD2TemporalType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2TemporalType: MD2DataType {
    
    func gt(value: MD2TemporalType) -> Bool
    
    func gte(value: MD2TemporalType) -> Bool
    
    func lt(value: MD2TemporalType) -> Bool
    
    func lte(value: MD2TemporalType) -> Bool
    
}