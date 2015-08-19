//
//  MD2WidgetType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

protocol MD2WidgetType: class {
    
    var widgetId: MD2WidgetMapping { get }
    
    var dimensions: MD2Dimension? { get set }
    
    var width: Float? { get }
    
    func render(view: UIView, controller: UIViewController)

    func calculateDimensions(bounds: MD2Dimension) -> MD2Dimension
    
    func enable()
    
    func disable()

}