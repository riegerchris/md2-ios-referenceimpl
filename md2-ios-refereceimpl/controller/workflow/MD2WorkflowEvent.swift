//
//  WorkflowEvent.swift
//
//  Generated code by class 'IOSWorkflowEvent' on 26.08.2015
//
// 	iOS generator for MD2 (version 0.1) written by Christoph Rieger on 15.08.2015 
//

// Make visible to Objective-C to allow use as Dictionary key (e.g. in MD2WorkflowEventHandler)
@objc
enum MD2WorkflowEvent: Int {
	case DoneEvent = 1
	case CancelWorkflowEvent = 2
    
    var description: String {
        switch self {
        case .DoneEvent: return "DoneEvent"
        case .CancelWorkflowEvent: return "CancelWorkflowEvent"
    	default: return "NotFound"
        }
    }
}