//
//  MD2Type.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2Type {
    
    func clone() -> MD2Type
    
    func toString() -> MD2String
    
    func equals(value : MD2Type) -> Bool
    
}