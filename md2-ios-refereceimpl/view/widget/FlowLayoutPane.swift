//
//  FlowLayoutPane.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 28.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class FlowLayoutPane: LayoutType {
    
    let name: MD2String

    var widgets: Array<WidgetType> = []
    
    init(name: MD2String) {
        self.name = name
    }
    
    func render(view: UIView, controller: UIViewController) {
        for widget in widgets {
            widget.render(view, controller: controller) // TODO create view itself
        }
    }
    
    func addWidget(widget: WidgetType) {
        widgets.append(widget)
    }
}