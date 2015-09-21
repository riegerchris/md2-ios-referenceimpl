//
//  MD2GotoViewAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2GotoViewAction: MD2Action {
    
    let actionSignature: String
    
    let targetView: MD2WidgetMapping
    
    init(actionSignature: String, targetView: MD2WidgetMapping) {
        self.actionSignature = actionSignature
        self.targetView = targetView
    }
    
    func execute() {
        MD2ViewManager.instance.goTo(targetView.description)
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }

}