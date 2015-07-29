//
//  WidgetType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

protocol WidgetType {
    
    var name: MD2String { get }
    
    func render(view: UIView, controller: UIViewController)
    
}