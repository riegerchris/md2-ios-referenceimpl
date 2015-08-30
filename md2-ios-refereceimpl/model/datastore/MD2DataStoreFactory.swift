//
//  MD2DataStoreFactory.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataStoreFactoryType {
    
    func createStore() -> MD2DataStoreType
}