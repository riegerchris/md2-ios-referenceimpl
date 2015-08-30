//
//  MD2ViewController.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2ViewController: UIViewController {

    var layout: MD2LayoutType
    
    init(layout: MD2LayoutType) {
        self.layout = layout
        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()

        // Render the desired Layout
        layout.render(self.view, controller: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateDimensions() {
        // Add small padding on top of screen
        let screen = MD2UIUtil.CGRectToDimension(UIScreen.mainScreen().bounds)
        layout.calculateDimensions(screen + MD2Dimension(x: MD2ViewConfig.GUTTER, y: 2 * MD2ViewConfig.GUTTER, width: -1 * MD2ViewConfig.GUTTER, height: -1 * MD2ViewConfig.GUTTER))
    }
    
}
