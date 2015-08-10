//
//  MD2DataType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol MD2DataType: MD2Type {
    
    // Unfortunately, platformValue cannot be specified as attribute of the interface MD2DataType according to the reference architecture
    // Reason: Specifying a generic type, e.g. via typealias does not work in Swift yet because subsequent methods will not accept MD2DataType as input anymore (error: Protocol of type MD2DataType can only be used as generic constraint...). 
    // Using type Any? instead is the only viable option although of limited help as type casting needs to be done twice on every element like this: ((value as! MD2Integer).platformValue as! Int) which is cumbersome. In addition, it does not even enforce a specific type either but may instead cause runtime errors if the platformValue was set directly using the "wrong" type. A property oberser could check this but again relies on the actual implementation and cannot be specified here.
    
    var value: Any? { get }
    
    func isSet() -> Bool
    
}