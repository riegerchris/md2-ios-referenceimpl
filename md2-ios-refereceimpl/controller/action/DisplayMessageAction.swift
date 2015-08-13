//
//  DisplayMessageAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DisplayMessageAction: ActionType {
    
    let actionSignature: String
    
    let message: String
    
    init(actionSignature: String, message: String) {
        self.actionSignature = actionSignature
        self.message = message
    }
    
    func execute() {
        UIUtil.showMessage(message, title: ViewConfig.TOOLTIP_TITLE_MESSAGE)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}