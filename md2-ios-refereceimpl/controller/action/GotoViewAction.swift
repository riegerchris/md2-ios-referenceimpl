//
//  GotoViewAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class GotoViewAction: ActionType {
    
    let actionSignature: String
    
    let targetView: WidgetMapping
    
    init(actionSignature: String, targetView: WidgetMapping) {
        self.actionSignature = actionSignature
        self.targetView = targetView
    }
    
    func execute() {
        ViewManager.instance.goto(targetView.description)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }

}