//
//  ContentProvideResetAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 05.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ContentProvideResetAction: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let contentProvider: ContentProviderType
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, contentProvider: ContentProviderType) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.contentProvider = contentProvider
    }
    
    func execute() {
        self.contentProvider.reset()
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }
    
}