//
//  MD2DataStoreFactory.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2DataStoreFactory<T: MD2Entity> {
    
    func createStore(entityPath: String) -> MD2DataStore {
        if entityPath == "" {
            // Create and initialize a local data store
            return MD2LocalStore<T>()
        } else {
            // Create and initialize a local data store
            return MD2RemoteStore<T>(entityPath: entityPath)
        }
    }
}