//
//  ProcessChainStep.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class ProcessChainStep {
    
    let stepSignature: String
    
    let viewName: String
    
    var processChain: ProcessChain
    
    // MARK Simplification, spec allows conditions
    // MARK Simplification, maximum one action for "then"
    var goTos: Array<(GoToType, WidgetMapping, ActionType?)> = []
    
    var message: String?
    
    init(stepSignature: String, processChain: ProcessChain, viewName: String) {
        self.stepSignature = stepSignature
        self.viewName = viewName
        self.processChain = processChain
    }
    
    func addGoTo(type: GoToType, widget: WidgetMapping, action: ActionType?) {
        self.goTos.append((type, widget, action))
    }
    
    func execute() {
        // Show view
        ViewManager.instance.goto(viewName)
        
        // Execute or  new actions
        for (type, widget, action) in goTos {
            switch type {
            case .Proceed:
                OnTouchHandler.instance.registerAction(
                    ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                    widget: WidgetRegistry.instance.getWidget(widget)!)

                if action != nil {
                    OnTouchHandler.instance.registerAction(action!, widget: WidgetRegistry.instance.getWidget(widget)!)
                }
                
            case .Reverse: OnTouchHandler.instance.registerAction(
                ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                widget: WidgetRegistry.instance.getWidget(widget)!)
                
            case .GoTo: ProcessChainGotoAction(actionSignature: stepSignature, processChain: processChain).execute()
            }
        }
    }
    
    enum GoToType {
        // MARK - More types to implement
        case Proceed, Reverse, GoTo
    }
    
}