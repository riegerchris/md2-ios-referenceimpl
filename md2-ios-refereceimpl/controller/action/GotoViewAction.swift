//
//  GotoViewAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class GotoViewAction: ActionType {
    
    let actionSignature: MD2String
    
    let targetView: WidgetMapping
    
    init(actionSignature: MD2String, targetView: WidgetMapping) {
        self.actionSignature = actionSignature
        self.targetView = targetView
    }
    
    func execute() {
        ViewManager.instance.goto(MD2String(targetView.description))
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }

}