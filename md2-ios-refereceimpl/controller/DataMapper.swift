//
//  DataMapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DataMapper {
    
    static let instance:DataMapper = DataMapper()
    
    // Bidirectional data structure as two maps (no native bidirectional data structure available and overhead is acceptable as only references are stored)
    var contentProviderToWidgetMapping: Dictionary<ContentProviderAttributeIdentity, WidgetWrapper> = [:]
    var widgetToContentProviderMapping: Dictionary<WidgetWrapper, ContentProviderAttributeIdentity> = [:]
    
    func map(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping[ContentProviderAttributeIdentity(contentProvider, attribute)] = widget
        widgetToContentProviderMapping[widget] = ContentProviderAttributeIdentity(contentProvider, attribute)
    }

    func unmap(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping.removeValueForKey(ContentProviderAttributeIdentity(contentProvider, attribute))
        widgetToContentProviderMapping.removeValueForKey(widget)
    }
    
    func getWidgetForContentProvider(contentProvider: ContentProviderType, attribute: String) -> WidgetWrapper? {
        return contentProviderToWidgetMapping[ContentProviderAttributeIdentity(contentProvider, attribute)]
    }
    
    func getContentProviderForWidget(widget: WidgetWrapper) -> ContentProviderAttributeIdentity? {
        return widgetToContentProviderMapping[widget]
    }
}