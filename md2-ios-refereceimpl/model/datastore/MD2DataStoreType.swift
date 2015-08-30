//
//  MD2DataStoreType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataStoreType {
    
    func query(query: MD2Query) -> MD2EntityType?
    
    func put(entity: MD2EntityType)
    
    func remove(internalId: MD2Integer)
    
}