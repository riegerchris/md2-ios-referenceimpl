//
//  WorkflowEvent.swift
//
//  Generated code by class 'IOSWorkflowEvent' on 28.09.2015
//
// 	iOS generator for MD2 (version 1.0) written by Christoph Rieger on 28.09.2015 
//

// Make visible to Objective-C to allow use as Dictionary key (e.g. in MD2WorkflowEventHandler)
@objc
/// Enumaration of all workflow events used throughout the app
enum MD2WorkflowEvent: Int {
	case DoneEvent = 1
	case CancelWorkflowEvent = 2
	case SubmitEvent = 3
	case CancelComplaintWorkflowEvent = 4
    
    /// Explicit attribute to emulate enum introspection and get the event name
    var description: String {
        switch self {
        case .DoneEvent: return "DoneEvent"
        case .CancelWorkflowEvent: return "CancelWorkflowEvent"
        case .SubmitEvent: return "SubmitEvent"
        case .CancelComplaintWorkflowEvent: return "CancelComplaintWorkflowEvent"
    	default: return "NotFound"
        }
    }
}
