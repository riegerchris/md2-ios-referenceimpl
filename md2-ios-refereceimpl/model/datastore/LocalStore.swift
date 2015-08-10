//
//  LocalStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit
import CoreData

class LocalStore: DataStoreType {
    
    let managedContext : NSManagedObjectContext
    
    init() {
        // Setup connection to data store managed context
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedContext = appDelegate.managedObjectContext!
    }
    
    func query(query: Query) -> MD2EntityType? {
        let entity: MD2EntityType = Address()
        println(entity.dynamicType)
        println(_stdlib_getDemangledTypeName(entity).componentsSeparatedByString(".").last!)
        
        // TODO
        var request = NSFetchRequest(entityName: Util.getClassName(Address()))
        request.returnsObjectsAsFaults = false
        
        var error: NSError?
        var results: NSArray = managedContext.executeFetchRequest(request, error: &error)!
        
        if error != nil {
            println("Could not load \(error), \(error?.userInfo)")
        }
        
        if (results.count > 0) {
            var data: NSManagedObject = results[0] as! NSManagedObject
            
            var city: String = data.valueForKey("myCity") as! String
            println("OUTPUT:" + city)
            
            //return accessToken.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
            
        } else {
            println("0 results returned")
            return nil
        }
        
        return nil
    }
    
    // TODO update existing entity
    func put(entity: MD2EntityType) {
        
        // Get new managed object
        let entityClass = NSEntityDescription.entityForName(Util.getClassName(entity), inManagedObjectContext: managedContext) //"md2-ios-referenceimpl." +
        
        let newObject = NSManagedObject(entity: entityClass!, insertIntoManagedObjectContext:managedContext)
        
     //   let newObject = NSEntityDescription.insertNewObjectForEntityForName("md2-ios-referenceimpl." + entity.className, inManagedObjectContext: managedContext) as Address
        
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
                
                // This is currently only possible by manual casting to all known types, see protocol MD2DataType for details why platformValue variable is not possible in Swift (yet)
                if attributeValue is MD2String {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! String), forKey: attributeKey)
                } else if attributeValue is MD2Boolean {
                    newObject.setValue(((attributeValue as! MD2DataType).value as! Bool), forKey: attributeKey)
                } else if attributeValue is MD2Date {
                    //newObject.setValue(((attributeValue as! MD2DataType).value as! Bool), forKey: attributeKey) TODO convert to string?
                } else if attributeValue is MD2DateTime {
                    //newObject.setValue(((attributeValue as! MD2DataType).value as! Bool), forKey: attributeKey) TODO convert to string?
                } else if attributeValue is MD2Time {
                    //newObject.setValue(((attributeValue as! MD2DataType).value as! Bool), forKey: attributeKey) TODO convert to string?
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
    
    func remove(internalId: Int) {
        // TODO
    }

}