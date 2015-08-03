//
//  ContentProviderRegistry.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ContentProviderRegistry {
    
    var contentProviders: Array<ContentProviderType> = []
    
    init() {
        
    }
    
    func addContentProvider(provider: ContentProviderType) {
        contentProviders.append(provider)
    }
    
}