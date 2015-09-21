//
//  MD2ContentProviderRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ContentProviderRegistry {
    
    static let instance: MD2ContentProviderRegistry = MD2ContentProviderRegistry()
    
    var contentProviders: Dictionary<String, MD2ContentProvider> = [:]
    
    func addContentProvider(contentProviderName: String, provider: MD2ContentProvider) {
        contentProviders[contentProviderName] = provider
    }
    
    func getContentProvider(contentProviderName: String) -> MD2ContentProvider? {
        return contentProviders[contentProviderName]
    }
    
}