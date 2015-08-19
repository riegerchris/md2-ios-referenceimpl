//
//  MD2WebServiceCallAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WebServiceCallAction: MD2ActionType {
    
    let actionSignature: String
    
    let webServiceCall: String // TODO WebServiceCall
    
    init(actionSignature: String, webServiceCall: String) {
        self.actionSignature = actionSignature
        self.webServiceCall = webServiceCall
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}