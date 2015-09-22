//
//  MD2ContentProvider.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2ContentProvider: AnyObject {
    
    var content: MD2Entity? { get set }
    
    var store: MD2DataStore { get set }
    
    var observedAttributes: Dictionary<String, MD2Type> { get set }
    
    var attributeContentProviders: Dictionary<String, MD2ContentProvider> { get set }
    
    var filter: MD2Filter? { get set }
    
    var entityPath: String { get }
    
    func getContent() -> MD2Entity?
    
    // Create new object to manage
    func setContent()
    
    func setContent(content: MD2Entity)
    
    func registerObservedOnChange(attribute: String)
    
    func unregisterObservedOnChange(attribute: String)
    
    func getValue(attribute: String) -> MD2Type?
    
    func setValue(attribute: String, value: MD2Type)
    
    func registerAttributeContentProvider(attribute: String, contentProvider: MD2ContentProvider)
    
    func checkAllAttributesForObserver()
    
    func reset()
    
    func load()
    
    func save()
    
    func remove()
    
}