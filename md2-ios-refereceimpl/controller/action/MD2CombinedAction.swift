//
//  MD2CombinedAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.09.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2CombinedAction: MD2Action {
    
    let actionSignature: String
    
    let actionList: Array<MD2Action>
    
    init(actionSignature: String, actionList: Array<MD2Action>) {
        self.actionSignature = actionSignature
        self.actionList = actionList
    }
    
    func execute() {
        for action in actionList {
            action.execute()
        }
    }
    
    func equals(anotherAction: MD2Action) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
    
}