//
//  MD2Query.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2Query {
    
    var predicates: Array<(String, String)> = []
    
    init() {
        // Nothing to initialize
    }

    // MARK for now only AND-Predicates are supported
    func addPredicate(attribute: String, value: String) {
        predicates.append((attribute, value))
    }
}