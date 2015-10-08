//
//  MD2LocalStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit
import CoreData

/// Local data store implementation.
class MD2LocalStore<T: MD2Entity>: MD2DataStore {
    
    /// The managed object context that is used to persist the data.
    let managedContext : NSManagedObjectContext
    
    /// Default initializer
    init() {
        // Setup connection to data store managed context
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedContext = appDelegate.managedObjectContext!
    }
    
    /**
        Query the data store.
    
        - parameter query: The query to specify which entity to retrieve.
    
        - returns: The entity (if exists).
    */
    func query(query: MD2Query) -> MD2Entity? {
        let results = getManagedObject(query)
        
        if (results.count > 0) {
            let data: NSManagedObject = results[0] as! NSManagedObject
            
            // Convert attributes to their respective types
            let result: T = T()
            result.internalId = MD2Integer(MD2String(data.valueForKey("internalId") as! String))
            
            for (attributeKey, attributeValue) in result.containedTypes {
                if data.valueForKey(attributeKey) == nil {
                    continue
                }
                
                let stringValue = data.valueForKey(attributeKey) as! String
                
                if attributeValue is MD2Enum {
                    (attributeValue as! MD2Enum).setValueFromString(MD2String(stringValue))
                    
                } else if attributeValue is MD2Entity {
                    print(attributeValue)
                    // TODO
                    //result.set(attributeKey, value: attributeValue)
                    
                } else if attributeValue is MD2DataType {
                    if attributeValue is MD2String {
                        result.set(attributeKey, value: MD2String(stringValue))
                    } else if attributeValue is MD2Boolean {
                        result.set(attributeKey, value: MD2Boolean(MD2String(stringValue)))
                    } else if attributeValue is MD2Date {
                        result.set(attributeKey, value: MD2Date(MD2String(stringValue)))
                    } else if attributeValue is MD2DateTime {
                        result.set(attributeKey, value: MD2DateTime(MD2String(stringValue)))
                    } else if attributeValue is MD2Time {
                        result.set(attributeKey, value: MD2Time(MD2String(stringValue)))
                    } else if attributeValue is MD2Float {
                        result.set(attributeKey, value: MD2Float(MD2String(stringValue)))
                    } else if attributeValue is MD2Integer {
                        result.set(attributeKey, value: MD2Integer(MD2String(stringValue)))
                    }
                }
            }
            
            return result
        }
        
        print("No results returned")
        return nil
    }
    
    /**
        Create or update the entity in the data store.
    
        - parameter entity: The entity to persist.
    */
    func put(entity: MD2Entity) {
        if let managedObject = getById(entity.internalId) {
            // Exists -> update
            updateData(managedObject, entity: entity)
        } else {
            // New -> insert
            insertData(entity)
        }
    }
    
    /**
        Remove an entity from the data store by Id.
    
        - parameter internalId: The Id of the entity to remove.
    */
    func remove(internalId: MD2Integer) {
        if let object = getById(internalId) {
            managedContext.deleteObject(object)
        }
        
        saveManagedContext()
    }
    
    /**
        Retrieve an object from the data store.

        - parameter query: The query specifying which entity to retrieve.

        - returns: A list of entities matching the query.
    */
    private func getManagedObject(query: MD2Query) -> NSArray {
        let request = NSFetchRequest(entityName: MD2Util.getClassName(T()))
        request.returnsObjectsAsFaults = false
        
        // Construct predicates
        var requestPredicates: Array<NSPredicate> = []
        for (attribute, value) in query.predicates {
            print("add query predicate: " + attribute + "==" + value)
            requestPredicates.append(NSPredicate(format: attribute + " == %@", value))
        }
        
        if(query.predicates.count == 1) {
            request.predicate = requestPredicates[0]
        } else if (query.predicates.count > 1) {
            request.predicate = NSCompoundPredicate(type: NSCompoundPredicateType.OrPredicateType, subpredicates: requestPredicates)
        }
        
        let results: NSArray = try! managedContext.executeFetchRequest(request)
        
        if results.count == 0 {
            print("Could not load!")
        }
        
        return results
    }
    
    /**
        Retrieve an object from the local store by Id.

        - parameter internalId: The Id of the object to look up.
    
        - returns: The managed object instance if found.
    */
    private func getById(internalId: MD2Integer) -> NSManagedObject? {
        if internalId.isSet() && !internalId.equals(MD2Integer(0)) {
            let query = MD2Query()
            query.addPredicate("internalId", value: internalId.toString())
            
            let results: NSArray = self.getManagedObject(query)
            
            if results.count > 0 {
                return results[0] as? NSManagedObject
            }
        }
        
        return nil
    }
    
    /**
        Add a new entity to the local data store.
    
        - parameter entity: The entity to persist.
    */
    private func insertData(entity: MD2Entity) {
        // Get new managed object
        let entityClass = NSEntityDescription.entityForName(MD2Util.getClassName(entity), inManagedObjectContext: managedContext)
        
        let newObject = NSManagedObject(entity: entityClass!, insertIntoManagedObjectContext:managedContext)
        
        // Define unique id
        let id = 1 // TODO define unique id
        entity.internalId = MD2Integer(id)
        newObject.setValue(entity.internalId.toString(), forKey: "internalId")
        
        // Fill with data and save
        setValues(newObject, entity: entity)
        saveManagedContext()
    }
    
    /**
        Update an existing entity in the local data store.

        - parameter managedObject: The object that is updated.
        - parameter entity: The MD2 entity to persist in the managed object.
    */
    private func updateData(managedObject: NSManagedObject, entity: MD2Entity) {
        // Fill with data and save
        setValues(managedObject, entity: entity)
        saveManagedContext()
    }
    
    /**
        Helper function to copy the entity content into a managed object.

        - parameter managedObject: The object that is filled.
        - parameter entity: The MD2 entity to copy.
    */
    private func setValues(object: NSManagedObject, entity: MD2Entity) {
        for (attributeKey, attributeValue) in entity.containedTypes {
            if attributeValue is MD2Enum && (attributeValue as! MD2Enum).value != nil {
                object.setValue(attributeValue.toString(), forKey: attributeKey)
                
            } else if attributeValue is MD2Entity {
                // TODO not working yet
                //object.setValue((attributeValue as! MD2Entity), forKey: attributeKey)
                
            } else if attributeValue is MD2DataType {
                if !(attributeValue as! MD2DataType).isSet() {
                    continue
                }
                
                object.setValue((attributeValue as! MD2DataType).toString(), forKey: attributeKey)
            }
        }
    }
    
    /**
        Save the managed context (similar to a commit in relational databases).
    */
    private func saveManagedContext() {
        var error: NSError?
        do {
            try managedContext.save()
        } catch let error1 as NSError {
            error = error1
            print("Could not save \(error), \(error?.userInfo)")
        }
    }

}