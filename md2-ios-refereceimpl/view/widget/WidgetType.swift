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
    
    func render(view: UIView, controller: UIViewController)

    func calculateDimensions(bounds: Dimension)
    
    func enable()
    
    func disable()

}