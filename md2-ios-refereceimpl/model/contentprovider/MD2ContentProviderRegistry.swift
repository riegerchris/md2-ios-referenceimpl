//
//  MD2ContentProviderRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ContentProviderRegistry {
    
    static let instance: MD2ContentProviderRegistry = MD2ContentProviderRegistry()
    
    var contentProviders: Dictionary<String, MD2ContentProviderType> = [:]
    
    func addContentProvider(contentProviderName: String, provider: MD2ContentProviderType) {
        contentProviders[contentProviderName] = provider
    }
    
    func getContentProvider(contentProviderName: String) -> MD2ContentProviderType? {
        return contentProviders[contentProviderName]
    }
    
}