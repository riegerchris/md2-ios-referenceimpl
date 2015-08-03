//
//  DataMapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DataMapper {
    
    var contentProviderToWidgetMapping: Dictionary<String, (ContentProviderType, WidgetWrapper)> = [:]
    
    func map(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: MD2String) {
        if attribute.isSet() {
            contentProviderToWidgetMapping[attribute.platformValue!] = (contentProvider, widget)
        }
    }

    func unmap(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: MD2String) {
        if attribute.isSet() {
            contentProviderToWidgetMapping.removeValueForKey(attribute.platformValue!)
        }
    }
}