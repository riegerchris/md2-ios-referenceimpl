//
//  MD2DataStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataStore {
    
    func query(query: MD2Query) -> MD2Entity?
    
    func put(entity: MD2Entity)
    
    func remove(internalId: MD2Integer)
    
}