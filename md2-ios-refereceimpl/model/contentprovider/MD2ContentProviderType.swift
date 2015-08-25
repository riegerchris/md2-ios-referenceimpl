//
//  MD2ContentProviderType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2ContentProviderType: AnyObject {
    
    var content: MD2EntityType? { get set }
    
    var store: MD2DataStoreType { get set }
    
    var observedAttributes: Dictionary<String, MD2Type> { get set }
    
    var attributeContentProviders: Dictionary<String, MD2ContentProviderType> { get set }
    
    var filter: MD2Filter? { get set }
    
    func getContent() -> MD2EntityType?
    
    // Create new object to manage
    func setContent()
    
    func setContent(content: MD2EntityType)
    
    func registerObservedOnChange(attribute: String)
    
    func unregisterObservedOnChange(attribute: String)
    
    func getValue(attribute: String) -> MD2Type?
    
    func setValue(attribute: String, value: MD2Type)
    
    func registerAttributeContentProvider(attribute: String, contentProvider: MD2ContentProviderType)
    
    func reset()
    
    func load()
    
    func save()
    
    func remove()
    
}