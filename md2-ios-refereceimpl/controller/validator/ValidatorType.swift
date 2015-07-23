//
//  ValidatorType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol ValidatorType {
    
    var message: (() -> MD2String)? { get }
    
    var defaultMessage: MD2String { get }
    
    func isValid(value: MD2Type) -> MD2Boolean
    
    func getMessage() -> MD2String
    
}