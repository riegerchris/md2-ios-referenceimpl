//
//  MD2NumericType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2NumericType: MD2DataType {
    
    /**
        Greater-than comparison method.
    
        - parameter value: The value to compare with.
    
        - returns: Whether the object is greater than the parameter value.
    */
    func gt(value: MD2NumericType) -> Bool
    
    /**
        Greater-or-equal comparison method.
    
        - parameter value: The value to compare with.
    
        - returns: Whether the object is greater or equal to the parameter value.
    */
    func gte(value: MD2NumericType) -> Bool
    
    /**
        Lower-than comparison method.
    
        - parameter value: The value to compare with.
    
        - returns: Whether the object is lower than the parameter value.
    */
    func lt(value: MD2NumericType) -> Bool
    
    /**
        Lower-or-equal comparison method.
    
        - parameter value: The value to compare with.
    
        - returns: Whether the object is lower or equal to the parameter value.
    */
    func lte(value: MD2NumericType) -> Bool

}