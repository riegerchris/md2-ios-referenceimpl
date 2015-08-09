//
//  MD2ViewController.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2ViewController: UIViewController {

    var layout: LayoutType
    
    init(layout: LayoutType) {
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
        let screen = UIUtil.CGRectToDimension(UIScreen.mainScreen().bounds)
        layout.calculateDimensions(screen + Dimension(x: 0.0, y: 10.0, width: 0.0, height: 0.0))
    }
    
}
