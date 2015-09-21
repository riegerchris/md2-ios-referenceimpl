//
//  MD2ViewController.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 21.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2ViewController: UIViewController {

    var layout: MD2Layout
    
    var scrollView: UIScrollView
    
    var dimensions: MD2Dimension
    
    init(layout: MD2Layout) {
        self.layout = layout
        self.scrollView = UIScrollView()
        self.dimensions = MD2UIUtil.CGRectToDimension(UIScreen.mainScreen().bounds)
        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        
        self.view.addSubview(scrollView)
        
        // Render the desired Layout
        layout.render(self.scrollView, controller: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateDimensions() {
        dimensions = MD2UIUtil.CGRectToDimension(UIScreen.mainScreen().bounds)
        calculateDimensions(dimensions)
    }
    
    func calculateDimensions(dimensions: MD2Dimension) {
        self.dimensions = dimensions
        scrollView.frame = MD2UIUtil.dimensionToCGRect(dimensions)
        
        // Add small padding along the screen border
        var result = layout.calculateDimensions(dimensions + MD2Dimension(x: MD2ViewConfig.GUTTER, y: 2 * MD2ViewConfig.GUTTER, width: -1 * MD2ViewConfig.GUTTER, height: -1 * MD2ViewConfig.GUTTER))
        
        // Add extra space on the bottom if content overflows
        if result.height > dimensions.height {
            result = result + MD2Dimension(x: 0, y: 0, width: 0, height: 20)
        }
        
        // Set scroll view size
        scrollView.contentSize = MD2UIUtil.dimensionToCGSize(result)

    }
    
    /// Notify view manager about oientation change
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        MD2ViewManager.instance.rotateScreen(size)
    }
    
}
