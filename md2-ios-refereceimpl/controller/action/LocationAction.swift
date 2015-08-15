//
//  LocationAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class LocationAction: ActionType {
    
    let actionSignature: String
    
    let location: Location
    
    init(actionSignature: String, location: Location) {
        self.actionSignature = actionSignature
        self.location = location
    }
    
    func execute() {
        // MARK include in later version
        fatalError("Location actions are not implemented!")
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}