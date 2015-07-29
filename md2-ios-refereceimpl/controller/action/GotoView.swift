//
//  GotoView.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class GotoView: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let eventHandler: EventHandlerType
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let targetView: MD2String
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, eventHandler: EventHandlerType, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, targetView: MD2String) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.eventHandler = eventHandler
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.targetView = targetView
    }
    
    func execute() {
        viewManager.goto(targetView)
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }

}