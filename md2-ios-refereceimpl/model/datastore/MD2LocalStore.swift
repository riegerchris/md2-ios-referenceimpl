//
//  MD2LocalStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit
import CoreData

class MD2LocalStore<T: MD2EntityType>: MD2DataStoreType {
    
    let managedContext : NSManagedObjectContext
    
    init() {
        // Setup connection to data store managed context
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedContext = appDelegate.managedObjectContext!
    }
    
    func query(query: MD2Query) -> MD2EntityType? {
        let results = getManagedObject(query)
        
        if (results.count > 0) {
            var data: NSManagedObject = results[0] as! NSManagedObject
            
            // Convert attributes to their respective types
            var result: T = T()
            result.internalId = MD2Integer(MD2String(data.valueForKey("internalId") as! String))
            
            for (attributeKey, attributeValue) in result.containedTypes {
                if data.valueForKey(attributeKey) == nil {
                    continue
                }
                
                let stringValue = data.valueForKey(attributeKey) as! String
                
                if attributeValue is MD2EnumType {
                    (attributeValue as! MD2EnumType).setValueFromString(MD2String(stringValue))
                    
                } else if attributeValue is MD2EntityType {
                    println(attributeValue)
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
        
        println("No results returned")
        return nil
    }
    
    func put(entity: MD2EntityType) {
        if let managedObject = getById(entity.internalId) {
            // Exists -> update
            updateData(managedObject, entity: entity)
        } else {
            // New -> insert
            insertData(entity)
        }
    }
    
    func remove(internalId: MD2Integer) {
        if let object = getById(internalId) {
            managedContext.deleteObject(object)
        }
        
        saveManagedContext()
    }
    
    private func getManagedObject(query: MD2Query) -> NSArray {
        var request = NSFetchRequest(entityName: MD2Util.getClassName(T()))
        request.returnsObjectsAsFaults = false
        
        // Construct predicates
        var requestPredicates: Array<NSPredicate> = []
        for (attribute, value) in query.predicates {
            println("add query predicate: " + attribute + "==" + value)
            requestPredicates.append(NSPredicate(format: attribute + " == %@", value))
        }
        
        if(query.predicates.count == 1) {
            request.predicate = requestPredicates[0]
        } else if (query.predicates.count > 1) {
            request.predicate = NSCompoundPredicate(type: NSCompoundPredicateType.OrPredicateType, subpredicates: requestPredicates)
        }
        
        var error: NSError?
        var results: NSArray = managedContext.executeFetchRequest(request, error: &error)!
        
        if error != nil {
            println("Could not load \(error), \(error?.userInfo)")
        }
        
        return results
    }
    
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
    
    private func insertData(entity: MD2EntityType) {
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
    
    private func updateData(managedObject: NSManagedObject, entity: MD2EntityType) {
        // Fill with data and save
        setValues(managedObject, entity: entity)
        saveManagedContext()
    }
    
    private func setValues(object: NSManagedObject, entity: MD2EntityType) {
        for (attributeKey, attributeValue) in entity.containedTypes {
            if attributeValue is MD2EnumType && (attributeValue as! MD2EnumType).value != nil {
                object.setValue(attributeValue.toString(), forKey: attributeKey)
                
            } else if attributeValue is MD2EntityType {
                // TODO not working yet
                //object.setValue((attributeValue as! MD2EntityType), forKey: attributeKey)
                
            } else if attributeValue is MD2DataType {
                if !(attributeValue as! MD2DataType).isSet() {
                    continue
                }
                
                object.setValue((attributeValue as! MD2DataType).toString(), forKey: attributeKey)
            }
        }
    }
    
    private func saveManagedContext() {
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
    }

}