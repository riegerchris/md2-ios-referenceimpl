//
//  MD2Type.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2Type: AnyObject {
    
    func clone() -> MD2Type
    
    func toString() -> String
    
    func equals(value : MD2Type) -> Bool
    
}