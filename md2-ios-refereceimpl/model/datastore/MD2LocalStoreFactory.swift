//
//  MD2LocalStoreFactory.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2LocalStoreFactory<T: MD2Entity>: MD2DataStoreFactory {
    
    func createStore() -> MD2DataStore {
        // Create and initialize a local data store
        return MD2LocalStore<T>()
    }
}