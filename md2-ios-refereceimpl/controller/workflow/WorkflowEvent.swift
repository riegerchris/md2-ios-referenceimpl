//
//  WorkflowEvent.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 13.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

// Make visible to Objective-C to allow use as Dictionary key (e.g. in WorkflowEventHandler)
@objc
enum WorkflowEvent: Int {
    // Pattern: WorkflowElement_EventName
    case LocationDetection_DoneEvent = 1
    case LocationDetection_CancelWorkflowEvent = 2
    
    var description: String {
        switch self {
        case .LocationDetection_DoneEvent: return "LocationDetection_DoneEvent"
        case .LocationDetection_CancelWorkflowEvent: return "LocationDetection_CancelWorkflowEvent"
        default: return "NotFound"
        }
    }
}