//
//  ComplaintContentProvider.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ComplaintContentProvider: ContentProviderType {
    
    var content: MD2EntityType? // managed entity instance
    
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
        observedAttributes[attribute] = self.content?.get(attribute)
    }
    
    func unregisterObservedOnChange(attribute: String) {
        observedAttributes[attribute] = nil
    }
    
    func getValue(attribute: String) -> MD2Type? {
        return observedAttributes[attribute]
    }
    
    func setValue(attribute: String, value: MD2Type) {
        // Update content
        let newValue = value.clone()
        if content != nil {
            println("[ComplaintContentProvider] Update id=\(content!.internalId.toString()) from '\(content!.get(attribute)!.toString())' to '\(newValue.toString())'")
        }
        content?.set(attribute, value: newValue)
        
        // Check if attribute is observed and fire event accordingly
        checkForObserver(attribute, newValue: value)
        
        // Update value in map
        observedAttributes[attribute] = newValue
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
        if let _ = content {
            println("LOAD entity \(content!.internalId.toString())")
            let query = Query()
            query.addPredicate("internalId", value: content!.internalId.toString())
            content = store.query(query)
        }
    }
    
    func save() {
        if let _ = content {
            println("SAVE entity \(content!.internalId.toString())")
            store.put(content!)
        }
    }
    
    func remove() {
        if let _ = content {
            println("REMOVE entity \(content!.internalId.toString())")
            store.remove(content!.internalId)
        }
    }
    
}