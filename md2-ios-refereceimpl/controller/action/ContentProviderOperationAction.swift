//
//  ContentProviderOperationAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ContentProviderOperationAction: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let eventHandler: EventHandlerType
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let allowedOperation: AllowedOperation
    
    let contentProvider: ContentProviderType
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, eventHandler: EventHandlerType, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, allowedOperation: AllowedOperation, contentProvider: ContentProviderType) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.eventHandler = eventHandler
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.allowedOperation = allowedOperation
        self.contentProvider = contentProvider
    }
    
    func execute() {
        switch allowedOperation {
        case AllowedOperation.Load: contentProvider.load()
        case AllowedOperation.Save: contentProvider.save()
        case AllowedOperation.Remove: contentProvider.remove()
        default: return
        }
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
    enum AllowedOperation {
        case Save, Load, Remove
    }
    
}