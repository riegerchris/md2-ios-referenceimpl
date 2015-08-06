//
//  GotoViewAction.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class GotoViewAction: ActionType {
    
    let actionSignature: MD2String
    
    let widgetRegistry: WidgetRegistry
    
    let contentProviderRegistry: ContentProviderRegistry
    
    let viewManager: ViewManager
    
    let dataMapper: DataMapper
    
    let targetView: WidgetMapping
    
    init(actionSignature: MD2String, widgetRegistry: WidgetRegistry, contentProviderRegistry: ContentProviderRegistry, viewManager: ViewManager, dataMapper: DataMapper, targetView: WidgetMapping) {
        
        self.actionSignature = actionSignature
        self.widgetRegistry = widgetRegistry
        self.contentProviderRegistry = contentProviderRegistry
        self.viewManager = viewManager
        self.dataMapper = dataMapper
        self.targetView = targetView
    }
    
    func execute() {
        viewManager.goto(MD2String(targetView.description))
    }
    
    func equals(anotherAction: ActionType) -> Bool {
        return actionSignature.equals(anotherAction.actionSignature)
    }

}