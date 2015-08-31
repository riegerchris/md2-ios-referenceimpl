//
//  MD2WorkflowElement.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2WorkflowElement {
    
    let name: String
    
    // Currently preprocessing leaves only one action MD2CustomAction__<WfeName>_startupAction
    var onInit: Array<MD2ActionType> = []
    
    init(name: String, onInit: MD2ActionType) {
        self.name = name
        self.onInit.append(onInit)
    }
    
    func start() {
        for initAction in onInit {
            initAction.execute()
        }
    }
    
    func end() {
        // Currently nothing to do
        // There might have some unmapping etc. in future
    }
    
}
