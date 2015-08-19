//
//  MD2ProcessChainStep.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

class MD2ProcessChainStep {
    
    let stepSignature: String
    
    let viewName: String
    
    var processChain: MD2ProcessChain
    
    // MARK Simplification, spec allows conditions
    // MARK Simplification, maximum one action for "then"
    typealias GoToTuple = (GoToType, MD2EventType, Any?, MD2ActionType?, MD2ProcessChainStep?)
    var goTos: Array<GoToTuple> = []
    
    var message: String?
    
    init(stepSignature: String, processChain: MD2ProcessChain, viewName: String) {
        self.stepSignature = stepSignature
        self.viewName = viewName
        self.processChain = processChain
    }
    
    // Currently only widgets and contentProviders make sense as objects in the tuple
    func addGoTo(goToType: GoToType, eventType: MD2EventType, widget: MD2WidgetMapping, action: MD2ActionType?, goToStep: MD2ProcessChainStep?) {
        self.goTos.append((goToType, eventType, widget, action, goToStep))
    }
    
    func addGoTo(goToType: GoToType, eventType: MD2EventType, cpaIdentity: MD2ContentProviderAttributeIdentity, action: MD2ActionType?, goToStep: MD2ProcessChainStep?) {
        self.goTos.append((goToType, eventType, cpaIdentity, action, goToStep))
    }
    
    func execute() {
        println("[ProcessChainStep] Start \(stepSignature)")
        
        // Show view
        MD2ViewManager.instance.goto(viewName)
        
        // Execute or  new actions
        for (goToType, eventType, element, action, target) in goTos {
            switch goToType {
            case .Proceed:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).registerAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).registerAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).registerAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
                
            case .Reverse:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).registerAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).registerAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).registerAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
                
            case .GoTo:
                if target == nil {
                    continue
                }
                let goToAction = MD2ProcessChainGotoAction(actionSignature: stepSignature, processChain: processChain, goTo: target!)
                
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).registerAction(goToAction,
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).registerAction(goToAction)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).registerAction(goToAction,
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
            }
            
            // Additional action if specified
            if action != nil {
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).registerAction(action!, widget: MD2WidgetRegistry.instance.getWidget(element as! MD2WidgetMapping)!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).registerAction(action!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).registerAction(action!,
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
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
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).unregisterAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).unregisterAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).unregisterAction(
                        MD2ProcessChainProceedAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
                
            case .Reverse:
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).unregisterAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).unregisterAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain))
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).unregisterAction(
                        MD2ProcessChainReverseAction(actionSignature: stepSignature, processChain: processChain),
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
                
            case .GoTo:
                if target == nil {
                    continue
                }
                let goToAction = MD2ProcessChainGotoAction(actionSignature: stepSignature, processChain: processChain, goTo: target!)
                
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).unregisterAction(goToAction,
                        widget: MD2WidgetRegistry.instance.getWidget(element! as! MD2WidgetMapping)!)
                } else if eventType.isGlobalEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).unregisterAction(goToAction)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).unregisterAction(goToAction,
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
            }
            
            // Additional action if specified
            if action != nil {
                if eventType.isWidgetEvent() {
                    (eventType.getEventHandler() as! MD2WidgetEventHandlerType).unregisterAction(action!, widget: MD2WidgetRegistry.instance.getWidget(element as! MD2WidgetMapping)!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2GlobalEventHandlerType).unregisterAction(action!)
                } else if eventType.isContentProviderEvent() {
                    (eventType.getEventHandler() as! MD2ContentProviderEventHandlerType).unregisterAction(action!,
                        contentProvider: (element! as! MD2ContentProviderAttributeIdentity).contentProvider,
                        attribute: (element! as! MD2ContentProviderAttributeIdentity).attribute)
                }
            }
        }
    }
    
    enum GoToType {
        // MARK - More types to implement
        case Proceed, Reverse, GoTo
    }
    
}