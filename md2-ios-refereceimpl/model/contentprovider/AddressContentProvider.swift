//
//  AddressContentProvider.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 09.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class AddressContentProvider: ContentProviderType {
    
    var content: MD2EntityType? // managed entity instance
    
    var store: DataStoreType
    
    var observedAttributes: Dictionary<String, MD2Type> = [:]
    
    var filter: Filter?
    
    init() {
        self.store = LocalStoreFactory<Address>().createStore()
    }
    
    convenience init(content: MD2EntityType) {
        self.init()
        self.content = content
    }
    
    func getContent() -> MD2EntityType? {
        return content
    }
    
    func setContent(content: MD2EntityType) {
        // Check all observed properties
        checkAllAttributesForObserver()
        
        // Update full entity by cloning
        self.content = (content.clone() as! MD2EntityType)
    }
    
    func registerObservedOnChange(attribute: String) {
        // Add observed attribute and remember current value
        observedAttributes[attribute] = self.content?.get(attribute)
    }
    
    func unregisterObservedOnChange(attribute: String) {
        observedAttributes[attribute] = nil
    }
    
    func getValue(attribute: String) -> MD2Type? {
        return observedAttributes[attribute]
    }
    
    func setValue(attribute: String, value: MD2Type) {
        // Check is attribute is observed and fire event accordingly
        checkForObserver(attribute, newValue: value)
        
        // Update value in entity and map
        let newValue = value.clone()
        observedAttributes[attribute] = newValue
        content?.set(attribute, value: newValue)
    }
    
    func checkForObserver(attribute: String, newValue: MD2Type) {
        // Check is attribute is observed
        if observedAttributes[attribute] != nil && !observedAttributes[attribute]!.equals(newValue) {
            OnContentChangeHandler.instance.fire(self, attribute: attribute)
        }
    }
    
    func checkAllAttributesForObserver() {
        if let _ = content {
            for (attribute, _) in observedAttributes {
                checkForObserver(attribute, newValue: content!.get(attribute)!)
            }
        }
    }
    
    func reset() {
        // Check all observed properties
        checkAllAttributesForObserver()
    }
    
    func load() {
        println("LOAD start")
        content = store.query(Query())
    }
    
    func save() {
        println("SAVE start")
        if let _ = content {
            store.put(content!)
        }
    }
    
    func remove() {
        println("REMOVE start")
        if let _ = content {
            store.remove(content!.internalId)
        }
    }
    
}