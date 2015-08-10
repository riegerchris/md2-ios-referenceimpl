//
//  DisplayMessageAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DisplayMessageAction: ActionType {
    
    let actionSignature: MD2String
    
    let message: MD2String
    
    init(actionSignature: MD2String, message: MD2String) {
        self.actionSignature = actionSignature
        self.message = message
    }
    
    func execute() {
        UIUtil.showMessage(message.toString(), title: ViewConfig.TOOLTIP_TITLE_MESSAGE)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}