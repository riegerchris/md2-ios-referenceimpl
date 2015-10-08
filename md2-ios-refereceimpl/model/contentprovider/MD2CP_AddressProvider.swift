//
//  MD2CP_AddressProvider.swift
//
//  Generated code by class 'IOSContentProvider' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

class MD2CP_AddressProvider: MD2ContentProvider {
    
    typealias contentType = MD2Entity_Address
    
    var content: MD2Entity? // managed entity instance
    
    var store: MD2DataStore
    
    var observedAttributes: Dictionary<String, MD2Type> = [:]
    
    var attributeContentProviders: Dictionary<String, MD2ContentProvider> = [:]
    
    var filter: MD2Filter?
    
	var entityPath: String = ""
    
    init() {
    	self.store = MD2DataStoreFactory<contentType>().createStore(entityPath)
    }
    
    convenience init(content: MD2Entity) {
        self.init()
        self.content = content
    }
    
    func getContent() -> MD2Entity? {
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
    
    func setContent(content: MD2Entity) {
        // Update full entity by cloning
        self.content = (content.clone() as! MD2Entity)
        
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
    	// Check for value change
    	if content == nil || content?.get(attribute) == nil || value.equals(content!.get(attribute)!) {
    		return
    	}
    	
        // Update content
        let newValue = value.clone()
        print("[MD2CP_AddressProvider] Update id=\(content!.internalId.toString()) set \(attribute) to '\(newValue.toString())'")

        

        content?.set(attribute, value: newValue)

        

        // Check if attribute is observed and fire event accordingly

        checkForObserver(attribute, newValue: value)

        

        // Update value in map

        observedAttributes[attribute] = newValue

    }

    

    func checkForObserver(attribute: String, newValue: MD2Type) {

        // Check if attribute is observed

        if observedAttributes[attribute] != nil && !observedAttributes[attribute]!.equals(newValue) {

            MD2OnContentChangeHandler.instance.fire(MD2ContentProviderAttributeIdentity(self, attribute))

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

        load()

        checkAllAttributesForObserver()

    }

    

    func load() {

        if let _ = content {

            print("LOAD entity \(content!.internalId.toString())")

            let query = MD2Query()

            query.addPredicate("internalId", value: content!.internalId.toString())

            content = store.query(query)

        }

    }

    

    func save() {

        if let _ = content {

            print("SAVE entity \(content!.internalId.toString())")

            store.put(content!)

        }

    }

    

    func remove() {

        if let _ = content {

            print("REMOVE entity \(content!.internalId.toString())")
            store.remove(content!.internalId)
        }
    }
    
    func registerAttributeContentProvider(attribute: String, contentProvider: MD2ContentProvider) {
        attributeContentProviders[attribute] = contentProvider
    }
    
}
