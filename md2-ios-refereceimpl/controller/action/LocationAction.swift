//
//  LocationAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class LocationAction: ActionType {
    
    let actionSignature: MD2String
    
    let location: Location
    
    init(actionSignature: MD2String, location: Location) {
        self.actionSignature = actionSignature
        self.location = location
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}