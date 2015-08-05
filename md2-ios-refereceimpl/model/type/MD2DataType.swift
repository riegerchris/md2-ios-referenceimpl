//
//  MD2DataType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataType: MD2Type {
    
    // Unfortunately, platformValue cannot be specified as attribute of the interface DataType according to the reference architecture
    // Reason: Specifying a generic type, e.g. via typealias does not work in Swift yet because subsequent methods will not accept MD2DataType as input anymore (error: Protocol of type MD2DataType can only be used as generic constraint...). 
    // Using type Any? instead is not much help as type casting needs to be done twice on every element like this: ((value as! MD2Integer).platformValue as! Int) which is lengthy. In addition, it does not even enforce a specific type either but may instead cause runtime errors if the platformValue was set using the wrong type like this: MD2Integer.platformValue = "2"
    
    func isSet() -> Bool
    
}