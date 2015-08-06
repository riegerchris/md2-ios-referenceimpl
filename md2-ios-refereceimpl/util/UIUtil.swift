//
//  UIUtil.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

import UIKit

class UIUtil {
    
    static func CGRectToDimension(bounds: CGRect) -> Dimension {
        let dimension = Dimension(
                        x: Float(bounds.origin.x),
                        y: Float(bounds.origin.y),
                        width: Float(bounds.size.width),
                        height: Float(bounds.size.height))
        
        return dimension
    }
    
    static func dimensionToCGRect(dimension: Dimension) -> CGRect {
        let rect = CGRect(x: Double(dimension.x),
                        y: Double(dimension.y),
                        width: Double(dimension.width),
                        height: Double(dimension.height))
        return rect
    }
    
    static func showMessage(message: String, title: String) {
        var alertView = UIAlertView()
        alertView.title = title
        alertView.addButtonWithTitle(ViewConfig.TOOLTIP_BUTTON)
        alertView.message = message
        alertView.show()
    }

}
