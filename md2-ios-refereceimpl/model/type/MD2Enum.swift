//
//  MD2Enum.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2Enum: MD2Type {
    
    typealias T
    
    var platformValue: T? { get }
    
}