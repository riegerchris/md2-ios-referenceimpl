//
//  MD2CP_ComplaintProvider.swift
//
//  Generated code by class 'IOSContentProvider' on 27.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

class MD2CP_ComplaintProvider: MD2ContentProviderType {
    
    let contentType = MD2Entity_Complaint.self
    
    var content: MD2EntityType? // managed entity instance
    
    var store: MD2DataStoreType
    
    var observedAttributes: Dictionary<String, MD2Type> = [:]
    
    var attributeContentProviders: Dictionary<String, MD2ContentProviderType> = [:]
    
    var filter: MD2Filter?
    
    init() {
    self.store = MD2RemoteStoreFactory<MD2Entity_Complaint>().createStore()
    (self.store as! MD2RemoteStore<MD2Entity_Complaint>).entityPath = "http://192.168.2.138:8080/CitizenApp.backend/service/Complaint/"
    }
    
    convenience init(content: MD2EntityType) {
        self.init()
        self.content = content
    }
    
    func getContent() -> MD2EntityType? {
        return content
    }
    
    func setContent() {
        // Create new object
        self.content = contentType()
        
        // Check all observed properties
        checkAllAttributesForObserver()
        
        // Update values in map
        for (attribute, _) in observedAttributes {
            observedAttributes[attribute] = self.content?.get(attribute)
        }
    }
    
    func setContent(content: MD2EntityType) {
        // Update full entity by cloning
        self.content = (content.clone() as! MD2EntityType)
        
        // Check all observed properties
        checkAllAttributesForObserver()
        
        // Update values in map
        for (attribute, _) in observedAttributes {
            observedAttributes[attribute] = self.content?.get(attribute)
        }
    }
    
    func registerObservedOnChange(attribute: String) {
        // Add observed attribute and remember current value
        observedAttributes[attribute] = self.content?.get(attribute)
    }
    
    func unregisterObservedOnChange(attribute: String) {
        observedAttributes[attribute] = nil
    }
    
    func getValue(attribute: String) -> MD2Type? {
        return content?.get(attribute)
    }
    
    func setValue(attribute: String, value: MD2Type) {
        // Update content
        let newValue = value.clone()
        if content != nil {
            println("[MD2CP_ComplaintProvider] Update id=\(content!.internalId.toString()) set \(attribute) to '\(newValue.toString())'")
        }
        content?.set(attribute, value: newValue)
        
        // Check if attribute is observed and fire event accordingly
        checkForObserver(attribute, newValue: value)
        
        // Update value in map
        observedAttributes[attribute] = newValue
    }
    
    func checkForObserver(attribute: String, newValue: MD2Type) {
        // Check if attribute is observed
        if observedAttributes[attribute] != nil && !observedAttributes[attribute]!.equals(newValue) {
            MD2OnContentChangeHandler.instance.fire(self, attribute: attribute)
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
            let query = MD2Query()
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
    
    func registerAttributeContentProvider(attribute: String, contentProvider: MD2ContentProviderType) {
        attributeContentProviders[attribute] = contentProvider
    }
    
}
