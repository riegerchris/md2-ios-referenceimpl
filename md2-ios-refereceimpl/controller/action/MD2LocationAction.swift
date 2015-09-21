//
//  MD2LocationAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2LocationAction: MD2Action {
    
    let actionSignature: String
    
    let location: MD2Location
    
    init(actionSignature: String, location: MD2Location) {
        self.actionSignature = actionSignature
        self.location = location
    }
    
    func execute() {
        // MARK include in later version
        fatalError("Location actions are not implemented!")
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}