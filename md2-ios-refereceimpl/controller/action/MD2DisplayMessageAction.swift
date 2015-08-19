//
//  MD2DisplayMessageAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2DisplayMessageAction: MD2ActionType {
    
    let actionSignature: String
    
    let message: String
    
    init(actionSignature: String, message: String) {
        self.actionSignature = actionSignature
        self.message = message
    }
    
    func execute() {
        MD2UIUtil.showMessage(message, title: MD2ViewConfig.TOOLTIP_TITLE_MESSAGE)
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}