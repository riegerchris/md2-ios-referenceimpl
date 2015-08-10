//
//  WebServiceCallAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class WebServiceCallAction: ActionType {
    
    let actionSignature: MD2String
    
    let webServiceCall: MD2String // TODO WebServiceCall
    
    init(actionSignature: MD2String, webServiceCall: MD2String) {
        self.actionSignature = actionSignature
        self.webServiceCall = webServiceCall
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}