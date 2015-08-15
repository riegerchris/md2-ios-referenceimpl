//
//  EnableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class EnableAction: ActionType {
    
    let actionSignature: String
    
    let viewElement: WidgetType
    
    init(actionSignature: String, viewElement: WidgetType) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
    }
    
    func execute() {
        self.viewElement.enable()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}