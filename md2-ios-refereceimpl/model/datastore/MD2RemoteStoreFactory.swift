//
//  MD2RemoteStoreFactory.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 27.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2RemoteStoreFactory<T: MD2EntityType>: MD2DataStoreFactoryType {
    
    func createStore() -> MD2DataStoreType {
        // Create and initialize a local data store
        return MD2RemoteStore<T>()
    }
}