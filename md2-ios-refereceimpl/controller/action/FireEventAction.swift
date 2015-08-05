//
//  FireEventAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class FireEventAction: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let eventHandler: EventHandlerType
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let event: MD2String // TODO WorkflowEvent
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, eventHandler: EventHandlerType, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, event: MD2String) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.eventHandler = eventHandler
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.event = event
    }
    
    func execute() {
        // TODO
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}