//
//  DisableAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class DisableAction: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let eventHandler: EventHandlerType
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let viewElement: WidgetType
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, eventHandler: EventHandlerType, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, viewElement: WidgetType) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.eventHandler = eventHandler
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.viewElement = viewElement
    }
    
    func execute() {
        self.viewElement.disable()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}