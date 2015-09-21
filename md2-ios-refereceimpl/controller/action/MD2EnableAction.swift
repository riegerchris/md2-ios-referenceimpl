//
//  MD2EnableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2EnableAction: MD2Action {
    
    let actionSignature: String
    
    let viewElement: MD2Widget
    
    init(actionSignature: String, viewElement: MD2Widget) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
    }
    
    func execute() {
        self.viewElement.enable()
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}