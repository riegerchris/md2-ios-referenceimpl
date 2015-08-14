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
    typealias GoToTuple = (GoToType, EventType, Any?, ActionType?, ProcessChainStep?)
    var goTos: Array<GoToTuple> = []
    
    var message: String?
    
    init(stepSignature: String, processChain: ProcessChain, viewName: String) {
        self.stepSignature = stepSignature
        self.viewName = viewName
        self.processChain = processChain
    }
    
    // Currently only widgets and contentProviders make sense as objects in the tuple
    func addGoTo(goToType: GoToType, eventType: EventType, widget: WidgetMapping, action: ActionType?, goToStep: ProcessChainStep?) {
        self.goTos.append((goToType, eventType, widget, action, goToStep))
    }
    
    func addGoTo(goToType: GoToType, eventType: EventType, cpaIdentity: ContentProviderAttributeIdentity, action: ActionType?, goToStep: ProcessChainStep?) {
        self.goTos.append((goToType, eventType, cpaIdentity, action, goToStep))
    }
    
    func execute() {
        println("[ProcessChainStep] Start \(stepSignature)")
        
        // Show view
        ViewManager.instance.goto(viewName)
        
        // Execute or  new actions
        for (goToType, eventType, element, action, target) in goTos {
            switch goToType {
            case .Proceed:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).registerAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).registerAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).registerAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
                
            case .Reverse:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).registerAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).registerAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).registerAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
                
            case .GoTo:
                if target == nil {
                    continue
                }
                let goToAction = ProcessChainGotoAction(actionSignature: stepSignature, processChain: processChain, goTo: target!)
                
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).registerAction(goToAction,
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).registerAction(goToAction)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).registerAction(goToAction,
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
            }
            
            // Additional action if specified
            if action != nil {
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).registerAction(action!, widget: WidgetRegistry.instance.getWidget(element as! WidgetMapping)!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).registerAction(action!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).registerAction(action!,
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
            }
        }
    }
    
    // Undo any binding before leaving the view
    func leave() {
        println("[ProcessChainStep] Leave \(stepSignature)")
        
        // Execute or  new actions
        for (goToType, eventType, element, action, target) in goTos {
            switch goToType {
            case .Proceed:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).unregisterAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).unregisterAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).unregisterAction(
                        ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
                
            case .Reverse:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).unregisterAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).unregisterAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).unregisterAction(
                        ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
                
            case .GoTo:
                if target == nil {
                    continue
                }
                let goToAction = ProcessChainGotoAction(actionSignature: stepSignature, processChain: processChain, goTo: target!)
                
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).unregisterAction(goToAction,
                        widget: WidgetRegistry.instance.getWidget(element! as! WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).unregisterAction(goToAction)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).unregisterAction(goToAction,
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
            }
            
            // Additional action if specified
            if action != nil {
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! WidgetEventHandlerType).unregisterAction(action!, widget: WidgetRegistry.instance.getWidget(element as! WidgetMapping)!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! GlobalEventHandlerType).unregisterAction(action!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! ContentProviderEventHandlerType).unregisterAction(action!,
                        contentProvider: (element! as! ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! ContentProviderAttributeIdentity).attribute)
                }
            }
        }
    }
    
    enum GoToType {
        // MARK - More types to implement
        case Proceed, Reverse, GoTo
    }
    
}