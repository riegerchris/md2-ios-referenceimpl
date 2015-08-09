//
//  ContentProviderAttributeIdentity.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 06.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import Foundation

// Needed to implement Equatable protocol as supertype of Hashable
func ==(lhs: ContentProviderAttributeIdentity, rhs: ContentProviderAttributeIdentity) -> Bool {
    return lhs.contentProvider === rhs.contentProvider && lhs.attribute == rhs.attribute
}

@objc
class ContentProviderAttributeIdentity: Hashable {
    
    let contentProvider: ContentProviderType
    
    let attribute: String
    
    let _hashValue: Int
    
    var hashValue: Int {
        get {
            return _hashValue
        }
    }
    
    init(_ contentProvider: ContentProviderType, _ attribute: String) {
        self.contentProvider = contentProvider
        self.attribute = attribute
        self._hashValue = Int(arc4random_uniform(999999999))
    }
    
}
