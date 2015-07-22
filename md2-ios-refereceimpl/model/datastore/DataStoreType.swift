//
//  DataStoreType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol DataStoreType {
    
    func query(query: Query) -> MD2EntityType
    
    func put(entity: MD2EntityType)
    
    func remove(internalId: Int)
    
}