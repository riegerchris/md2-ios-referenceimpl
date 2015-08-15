//
//  DataMapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// MARK may also bypass the actions instead
class DataMapper {
    
    static let instance: DataMapper = DataMapper()
    
    // Bidirectional data structure as two maps (no native bidirectional data structure available and overhead is acceptable as only references are stored)
    var contentProviderToWidgetMapping: Dictionary<ContentProviderAttributeIdentity, WidgetWrapper> = [:]
    var widgetToContentProviderMapping: Dictionary<WidgetWrapper, ContentProviderAttributeIdentity> = [:]
    
    func map(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping[ContentProviderAttributeIdentity(contentProvider, attribute)] = widget
        
        // Add mapping
        widgetToContentProviderMapping[widget] = ContentProviderAttributeIdentity(contentProvider, attribute)
        
        // Add content provider observer
        contentProvider.registerObservedOnChange(attribute)

        // Add respective action on change
        let providerChangeAction = UpdateWidgetAction(
            actionSignature: Util.getClassName(contentProvider) + "__" + attribute + "__" + widget.widgetId.description,
            viewElement: widget,
            contentProvider: contentProvider,
            attribute: attribute)
        OnContentChangeHandler.instance.registerAction(providerChangeAction, contentProvider: contentProvider, attribute: attribute)
        
        let fieldChangeAction = UpdateContentProviderAction(
            actionSignature: Util.getClassName(contentProvider) + "__" + attribute + "__" + widget.widgetId.description,
            viewElement: widget,
            contentProvider: contentProvider,
            attribute: attribute)
        OnWidgetChangeHandler.instance.registerAction(fieldChangeAction, widget: widget)
    }

    func unmap(widget: WidgetWrapper, contentProvider: ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping.removeValueForKey(ContentProviderAttributeIdentity(contentProvider, attribute))
        
        // Remove conent provider observer
        contentProvider.unregisterObservedOnChange(attribute)
        
        // Remove onChange action
        let action = UpdateWidgetAction(actionSignature: Util.getClassName(contentProvider), viewElement: widget, contentProvider: contentProvider, attribute: attribute)
        OnContentChangeHandler.instance.unregisterAction(action, contentProvider: contentProvider, attribute: attribute)
        
        let fieldChangeAction = UpdateContentProviderAction(actionSignature: Util.getClassName(contentProvider), viewElement: widget, contentProvider: contentProvider, attribute: attribute)
        OnWidgetChangeHandler.instance.unregisterAction(fieldChangeAction, widget: widget)

        // Remove mapping
        widgetToContentProviderMapping.removeValueForKey(widget)
    }
    
    func getWidgetForContentProvider(contentProvider: ContentProviderType, attribute: String) -> WidgetWrapper? {
        return contentProviderToWidgetMapping[ContentProviderAttributeIdentity(contentProvider, attribute)]
    }
    
    func getContentProviderForWidget(widget: WidgetWrapper) -> ContentProviderAttributeIdentity? {
        return widgetToContentProviderMapping[widget]
    }
}