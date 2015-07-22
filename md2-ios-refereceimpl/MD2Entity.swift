//
//  MD2Entity.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2Entity: MD2Type {
    
    var containedTypes : Dictionary<String, MD2Type> { get set }
    
    func get(attribute: String) -> MD2Type?
    
    func set(attribute: String, value: MD2Type)
    
}