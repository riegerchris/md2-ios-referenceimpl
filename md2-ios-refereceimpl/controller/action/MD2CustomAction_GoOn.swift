//
//  MD2CustomAction_GoOn.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2CustomAction_GoOn: MD2ActionType {
    
    let actionSignature: String = "MD2CustomAction_GoOn"
    
    func execute() {
        let action1 = MD2DisplayMessageAction(actionSignature: actionSignature + "__1", message: "Why the hell have you visited " + MD2WidgetRegistry.instance.getWidget(MD2WidgetMapping.LocationDetectionView_CityValue)!.value.toString() + "???")
    }
    
    func equals(anotherAction: MD2ActionType) -> Bool {
        return actionSignature == anotherAction.actionSignature
    }
}