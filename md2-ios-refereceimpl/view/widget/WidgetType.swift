//
//  WidgetType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

protocol WidgetType: class {
    
    var widgetId: WidgetMapping { get }
    
    var dimensions: Dimension? { get set }
    
    var width: Float? { get }
    
    func render(view: UIView, controller: UIViewController)

    func calculateDimensions(bounds: Dimension) -> Dimension
    
    func enable()
    
    func disable()

}