//
//  UpdateWidgetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 12.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class UpdateWidgetAction: ActionType {
    
    let actionSignature: String
    
    let viewElement: WidgetWrapper
    
    let contentProvider: ContentProviderType
    
    let attribute: String
    
    init(actionSignature: String, viewElement: WidgetWrapper, contentProvider: ContentProviderType, attribute: String) {
        self.actionSignature = actionSignature
        self.viewElement = viewElement
        self.contentProvider = contentProvider
        self.attribute = attribute
    }
    
    func execute() {
        if let value = contentProvider.getValue(attribute) {
            println("[UpdateWidgetAction] Update " + actionSignature)
            self.viewElement.setValue(value)
        }
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}