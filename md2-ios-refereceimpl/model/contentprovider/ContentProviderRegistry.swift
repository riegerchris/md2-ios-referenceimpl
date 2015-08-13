//
//  ContentProviderRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ContentProviderRegistry {
    
    static let instance: ContentProviderRegistry = ContentProviderRegistry()
    
    var contentProviders: Dictionary<String, ContentProviderType> = [:]
    
    func addContentProvider(contentProviderName: String, provider: ContentProviderType) {
        contentProviders[contentProviderName] = provider
    }
    
    func getContentProvider(contentProviderName: String) -> ContentProviderType? {
        return contentProviders[contentProviderName]
    }
    
}