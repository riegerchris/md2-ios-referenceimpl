//
//  MD2DataMapper.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// MARK may also bypass the actions instead
class MD2DataMapper {
    
    static let instance: MD2DataMapper = MD2DataMapper()
    
    // Bidirectional data structure as two maps (no native bidirectional data structure available and overhead is acceptable as only references are stored)
    var contentProviderToWidgetMapping: Dictionary<MD2ContentProviderAttributeIdentity, MD2WidgetWrapper> = [:]
    var widgetToContentProviderMapping: Dictionary<MD2WidgetWrapper, MD2ContentProviderAttributeIdentity> = [:]
    
    func map(widget: MD2WidgetWrapper, contentProvider: MD2ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping[MD2ContentProviderAttributeIdentity(contentProvider, attribute)] = widget
        
        // Add mapping
        widgetToContentProviderMapping[widget] = MD2ContentProviderAttributeIdentity(contentProvider, attribute)
        
        // Add content provider observer
        contentProvider.registerObservedOnChange(attribute)

        // Add respective action on change
        let providerChangeAction = MD2UpdateWidgetAction(
            actionSignature: MD2Util.getClassName(contentProvider) + "__" + attribute + "__" + widget.widgetId.description,
            viewElement: widget,
            contentProvider: contentProvider,
            attribute: attribute)
        MD2OnContentChangeHandler.instance.registerAction(providerChangeAction, contentProvider: contentProvider, attribute: attribute)
        
        let fieldChangeAction = MD2UpdateContentProviderAction(
            actionSignature: MD2Util.getClassName(contentProvider) + "__" + attribute + "__" + widget.widgetId.description,
            viewElement: widget,
            contentProvider: contentProvider,
            attribute: attribute)
        MD2OnWidgetChangeHandler.instance.registerAction(fieldChangeAction, widget: widget)
    }

    func unmap(widget: MD2WidgetWrapper, contentProvider: MD2ContentProviderType, attribute: String) {
        contentProviderToWidgetMapping.removeValueForKey(MD2ContentProviderAttributeIdentity(contentProvider, attribute))
        
        // Remove conent provider observer
        contentProvider.unregisterObservedOnChange(attribute)
        
        // Remove onChange action
        let action = MD2UpdateWidgetAction(actionSignature: MD2Util.getClassName(contentProvider), viewElement: widget, contentProvider: contentProvider, attribute: attribute)
        MD2OnContentChangeHandler.instance.unregisterAction(action, contentProvider: contentProvider, attribute: attribute)
        
        let fieldChangeAction = MD2UpdateContentProviderAction(actionSignature: MD2Util.getClassName(contentProvider), viewElement: widget, contentProvider: contentProvider, attribute: attribute)
        MD2OnWidgetChangeHandler.instance.unregisterAction(fieldChangeAction, widget: widget)

        // Remove mapping
        widgetToContentProviderMapping.removeValueForKey(widget)
    }
    
    func getWidgetForContentProvider(contentProvider: MD2ContentProviderType, attribute: String) -> MD2WidgetWrapper? {
        return contentProviderToWidgetMapping[MD2ContentProviderAttributeIdentity(contentProvider, attribute)]
    }
    
    func getContentProviderForWidget(widget: MD2WidgetWrapper) -> MD2ContentProviderAttributeIdentity? {
        return widgetToContentProviderMapping[widget]
    }
}