//
//  DisableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DisableAction: ActionType {
    
    let actionSignature: String
    
    let viewElement: WidgetType
    
    init(actionSignature: String, viewElement: WidgetType) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
    }
    
    func execute() {
        self.viewElement.disable()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}