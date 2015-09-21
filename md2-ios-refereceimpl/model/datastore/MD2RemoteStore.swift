//
//  MD2RemoteStore.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 27.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2RemoteStore<T: MD2Entity>: MD2DataStore {
    
    // e.g. http://localhost:8080/CitizenApp.ios/service/address/
    var entityPath: String = ""
    
    init() {
        // Nothing to initialize
    }
    
    func query(query: MD2Query) -> MD2Entity? {
        let fullPath = entityPath + queryToFilterString(query)
        
        let json = MD2RestClient.instance.makeHTTPGetRequestSync(fullPath)
        
        // Maximum one entity result expected
        return JSONToEntity(json[0], entity: T())
    }
    
    func put(entity: MD2Entity) {
        let q = MD2Query()
        q.addPredicate("myCountry", value: "bla")
        query(q)
        self.saveData(entity)
    }
    
    func remove(internalId: MD2Integer) {
        let fullPath = entityPath + "?id=" + internalId.toString()
        
        MD2RestClient.instance.makeHTTPDeleteRequest(fullPath, body: JSON(""), onCompletion: { json, err in
            if json["result"].bool == true {
                println("[RemoteStore] Deleted entity with internalId \(internalId.toString())")
            } else {
                println("[RemoteStore] Deletion of entity with internalId \(internalId.toString()) failed")
            }
        })
    }
    
    private func getById(internalId: MD2Integer) -> MD2Entity? {
        if internalId.isSet() && !internalId.equals(MD2Integer(0)) {
            
            let fullPath = entityPath + internalId.toString() + "/"
            
            let json = MD2RestClient.instance.makeHTTPGetRequestSync(fullPath)
            
            return JSONToEntity(json, entity: T())
        }
        
        return nil
    }
    
    private func saveData(entity: MD2Entity) {
        // Single entities are also tranferred as array
        let body = JSON([entityToDict(entity)])
        
        MD2RestClient.instance.makeHTTPPostRequest(entityPath, body: body, onCompletion: { json, err in
            let newId = json[0]["__internalId"].int
            if let newId = newId {
                entity.internalId = MD2Integer(newId)
            } else {
                println("Warning: RemoteStore.saveData returned unexpected response!")
            }
        })
    }
    
    private func entityToDict(entity: MD2Entity) -> Dictionary<String, AnyObject> {
        var dict: Dictionary<String, AnyObject> = [:]
        
        for (attributeKey, attributeValue) in entity.containeds {
            if attributeValue is MD2Enum && (attributeValue as! MD2Enum).value != nil {
                dict[attributeKey] = (attributeValue as! MD2Enum).toInt()
            } else if attributeValue is MD2Entity {
                dict[attributeKey] = entityToDict(attributeValue as! MD2Entity)
            } else if attributeValue is MD2DataType {
                if !(attributeValue as! MD2DataType).isSet() {
                    continue
                }
                
                if attributeValue is MD2Integer {
                    // Int -> Number
                    dict[attributeKey] = (attributeValue as! MD2Integer).platformValue!
                } else if attributeValue is MD2Float {
                    // Float -> Number
                    dict[attributeKey] = (attributeValue as! MD2Float).platformValue!
                } else {
                    // Rest -> String
                    dict[attributeKey] = attributeValue.toString()
                }
            }
        }
        
        // Add internalId if exists to update entity
        if entity.internalId.isSet() {
            dict["__internalId"] = entity.internalId.platformValue!
        }
        
        return dict
    }
    
    private func JSONToEntity(json: JSON, entity:MD2Entity) -> MD2Entity {
        if json == nil {
            return entity
        }
        
        entity.internalId = MD2Integer(json["__internalId"].intValue)
        
        for (attributeKey, attributeValue) in entity.containeds {
            if json[attributeKey] == nil {
                continue
            }
            
            if attributeValue is MD2Enum {
                (attributeValue as! MD2Enum).setValueFromInt(json[attributeKey].intValue)
                
            } else if attributeValue is MD2Entity {
                // TODO recursive usage
                println("Nested entities not supported for key: " + attributeKey)
                
            } else if attributeValue is MD2DataType {
                if attributeValue is MD2String {
                    entity.set(attributeKey, value: MD2String(json[attributeKey].stringValue))
                } else if attributeValue is MD2Boolean {
                    entity.set(attributeKey, value: MD2Boolean(MD2String(json[attributeKey].stringValue)))
                } else if attributeValue is MD2Date {
                    entity.set(attributeKey, value: MD2Date(MD2String(json[attributeKey].stringValue)))
                } else if attributeValue is MD2DateTime {
                    entity.set(attributeKey, value: MD2DateTime(MD2String(json[attributeKey].stringValue)))
                } else if attributeValue is MD2Time {
                    entity.set(attributeKey, value: MD2Time(MD2String(json[attributeKey].stringValue)))
                } else if attributeValue is MD2Float {
                    entity.set(attributeKey, value: MD2Float(json[attributeKey].floatValue))
                } else if attributeValue is MD2Integer {
                    entity.set(attributeKey, value: MD2Integer(json[attributeKey].intValue))
                }
            }
        }
        
        return entity
    }

    // TODO currently subset of filter/query possibilities using only strictly equals
    private func queryToFilterString(query: MD2Query) -> String {
        
        var filterString: String = ""
        var isFirst = true
        
        for (attribute, value) in query.predicates {
            if !isFirst {
                filterString += " and "
            }
            
            filterString += attribute
                + " equals "
                + "\"" + value + "\""
            isFirst = false
        }
        
        // URL-encode quotes, whitespaces etc.
        return "?filter=" + filterString.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())!
    }

}