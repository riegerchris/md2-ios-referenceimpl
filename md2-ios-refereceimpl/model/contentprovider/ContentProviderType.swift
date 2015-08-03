//
//  ContentProviderType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol ContentProviderType {
    
    var content: MD2EntityType { get set }
    
    var store: DataStoreType { get set }
    
    var observedAttributes: Dictionary<String, MD2Type> { get set }
    
    var filter: Filter { get set }
    
    func getContent() -> MD2EntityType
    
    func setContent(content: MD2EntityType)
    
    func registerObservedOnChange(attribute: String)
    
    func unregisterObservedOnChange(attribute: String)
    
    func getValue(attribute: String) -> MD2Type
    
    func setValue(attribute: String, value: MD2Type)
    
    func reset()
    
    func load()
    
    func save()
    
    func remove()
    
}