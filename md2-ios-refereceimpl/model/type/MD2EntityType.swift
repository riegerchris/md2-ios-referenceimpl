//
//  MD2EntityType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2EntityType: MD2Type {
    
    var internalId: MD2Integer { get set }
    
    var containedTypes : Dictionary<String, MD2Type> { get set }
    
    init()
    
    func get(attribute: String) -> MD2Type?
    
    func set(attribute: String, value: MD2Type)
    
}