//
//  ComplaintContentProvider.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ComplaintContentProvider: ContentProviderType {
    
    var content: MD2EntityType // managed entity instance
    
    var store: DataStoreType
    
    var observedAttributes: Dictionary<String, MD2Type> = [:]
    
    var filter: Filter?
    
    init(content: MD2EntityType) {
        self.content = content
        self.store = LocalStoreFactory<Complaint>().createStore()
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
        observedAttributes[attribute] = self.content.get(attribute)
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
        content.set(attribute, value: newValue)
    }
    
    func checkForObserver(attribute: String, newValue: MD2Type) {
        // Check is attribute is observed
        if observedAttributes[attribute] != nil && !observedAttributes[attribute]!.equals(newValue) {
            OnContentChangeHandler.instance.fire(self, attribute: attribute)
        }
    }
    
    func checkAllAttributesForObserver() {
        for (attribute, _) in observedAttributes {
            checkForObserver(attribute, newValue: content.get(attribute)!)
        }
    }
    
    func reset() {
        // Check all observed properties
        checkAllAttributesForObserver()
    }
    
    func load() {
        // TODO
    }
    
    func save() {
        // TODO
    }
    
    func remove() {
        // TODO where to get internalId from?
    }
    
}