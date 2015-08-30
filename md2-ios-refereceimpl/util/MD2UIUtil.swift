//
//  UIUtil.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class MD2UIUtil {
    
    static func CGRectToDimension(bounds: CGRect) -> MD2Dimension {
        let dimension = MD2Dimension(
                        x: Float(bounds.origin.x),
                        y: Float(bounds.origin.y),
                        width: Float(bounds.size.width),
                        height: Float(bounds.size.height))
        
        return dimension
    }
    
    static func dimensionToCGRect(dimension: MD2Dimension) -> CGRect {
        let rect = CGRect(x: Double(dimension.x),
                        y: Double(dimension.y),
                        width: Double(dimension.width),
                        height: Double(dimension.height))
        return rect
    }
    
    static func showMessage(message: String, title: String) {
        var alertView = UIAlertView()
        alertView.title = title
        alertView.addButtonWithTitle(MD2ViewConfig.TOOLTIP_BUTTON)
        alertView.message = message
        alertView.show()
    }

    static func innerDimensionsWithGutter(outerDimensions: MD2Dimension) -> MD2Dimension {
        return outerDimensions + MD2Dimension(
            x: MD2ViewConfig.GUTTER,
            y: MD2ViewConfig.GUTTER,
            width: -2 * MD2ViewConfig.GUTTER,
            height: -2 * MD2ViewConfig.GUTTER)
    }
}
