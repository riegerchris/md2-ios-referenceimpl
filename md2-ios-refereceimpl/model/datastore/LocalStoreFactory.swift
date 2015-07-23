//
//  LocalStoreFactory.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class LocalStoreFactory: DataStoreFactoryType {
    
    func createStore() -> DataStoreType {
        //TODO
        return LocalStore()
    }
}