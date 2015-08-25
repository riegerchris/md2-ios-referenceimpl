//
//  MD2DisableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2DisableAction: MD2ActionType {
    
    let actionSignature: String
    
    let viewElement: MD2WidgetType
    
    init(actionSignature: String, viewElement: MD2WidgetType) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
    }
    
    func execute() {
        self.viewElement.disable()
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}