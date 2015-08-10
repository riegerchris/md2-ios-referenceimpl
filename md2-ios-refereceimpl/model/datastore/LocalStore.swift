//
//  LocalStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit
import CoreData

class LocalStore<T: MD2EntityType>: DataStoreType {
    
    let managedContext : NSManagedObjectContext
    
    init() {
        // Setup connection to data store managed context
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedContext = appDelegate.managedObjectContext!
    }
    
    func query(query: Query) -> MD2EntityType? {
        var request = NSFetchRequest(entityName: Util.getClassName(T()))
        request.returnsObjectsAsFaults = false
        
        var error: NSError?
        var results: NSArray = managedContext.executeFetchRequest(request, error: &error)!
        
        if error != nil {
            println("Could not load \(error), \(error?.userInfo)")
        }
        
        if (results.count > 0) {
            var data: NSManagedObject = results[0] as! NSManagedObject
            
            // Convert native types
            var result: T = T()
            result.internalId = MD2Integer(data.valueForKey("internalId") as! Int)
            
            for (attributeKey, attributeValue) in result.containedTypes {
                if data.valueForKey(attributeKey) == nil {
                    continue
                }
                
                if attributeValue is MD2EnumType {
                    // TODO
                    
                } else if attributeValue is MD2EntityType {
                    // TODO
                    
                } else if attributeValue is MD2DataType {
                    if attributeValue is MD2String {
                        result.set(attributeKey, value: MD2String(data.valueForKey(attributeKey) as! String))
                    } else if attributeValue is MD2Boolean {
                        result.set(attributeKey, value: MD2Boolean(data.valueForKey(attributeKey) as! Bool))
                    } else if attributeValue is MD2Date {
                        result.set(attributeKey, value: MD2Date(data.valueForKey(attributeKey) as! String))
                    } else if attributeValue is MD2DateTime {
                        result.set(attributeKey, value: MD2DateTime(data.valueForKey(attributeKey) as! String))
                    } else if attributeValue is MD2Time {
                        result.set(attributeKey, value: MD2Time(data.valueForKey(attributeKey) as! String))
                    } else if attributeValue is MD2Float {
                        result.set(attributeKey, value: MD2Float(data.valueForKey(attributeKey) as! Float))
                    } else if attributeValue is MD2Integer {
                        result.set(attributeKey, value: MD2Integer(data.valueForKey(attributeKey) as! Int))
                    }
                }
            }
            
            return result
            
        } else {
            println("No results returned")
        }
        
        return nil
    }
    
    func put(entity: MD2EntityType) {
        if getById(entity.internalId) == nil {
            // New -> insert
            insertData(entity)
        } else {
            // Exists -> update
            updateData(entity)
        }
    }
    
    func remove(internalId: MD2Integer) {
        // TODO
    }
    
    private func getById(internalId: MD2Integer) -> MD2EntityType? {
        // TODO query
        return nil
    }
    
    private func insertData(entity: MD2EntityType) {
        // Get new managed object
        let entityClass = NSEntityDescription.entityForName(Util.getClassName(entity), inManagedObjectContext: managedContext)
        
        let newObject = NSManagedObject(entity: entityClass!, insertIntoManagedObjectContext:managedContext)
        
        let id = 1 // TODO
        entity.internalId = MD2Integer(id)
        newObject.setValue(id, forKey: "internalId")
        
        // Set values
        for (attributeKey, attributeValue) in entity.containedTypes {
            if attributeValue is MD2EnumType {
                newObject.setValue(((attributeValue as! MD2EnumType).value as! String), forKey: attributeKey)
                
            } else if attributeValue is MD2EntityType {
                newObject.setValue((attributeValue as! MD2EntityType), forKey: attributeKey)
                
            } else if attributeValue is MD2DataType {
                if !(attributeValue as! MD2DataType).isSet() {
                    continue
                }
                
                // Getting the platformType is currently only possible by manual casting to all known types, see protocol MD2DataType for details why platformValue variable is not possible in Swift (yet)
                if attributeValue is MD2String {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! String), forKey: attributeKey)
                } else if attributeValue is MD2Boolean {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! Bool), forKey: attributeKey)
                } else if attributeValue is MD2Date {
                    newObject.setValue((attributeValue as! MD2DataType).toString(), forKey: attributeKey)
                } else if attributeValue is MD2DateTime {
                    newObject.setValue((attributeValue as! MD2DataType).toString(), forKey: attributeKey)
                } else if attributeValue is MD2Time {
                    newObject.setValue((attributeValue as! MD2DataType).toString(), forKey: attributeKey)
                } else if attributeValue is MD2Float {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! Float), forKey: attributeKey)
                } else if attributeValue is MD2Integer {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! Int), forKey: attributeKey)
                }
            }
        }
        
        // Save
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
    }
    
    private func updateData(entity: MD2EntityType) {
        // TODO
    }

}