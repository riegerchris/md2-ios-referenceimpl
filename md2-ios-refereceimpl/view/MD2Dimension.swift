//
//  MD2Dimension.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

infix operator + {}
infix operator - {}

/**
    Adds two dimension objects.

    **Important** This is meant to alter dimension objects. For geometrical calculations of two distinct dimensions see union()

    - parameter first: The original dimension object.
    - parameter second: The altering dimension object.

    :results: The altered dimension.
*/
func + (first: MD2Dimension, second: MD2Dimension) -> MD2Dimension {
    return MD2Dimension(
        x: first.x + second.x,
        y: first.y + second.y,
        width: first.width + second.width,
        height: first.height + second.height)
}

/**
    Subtracts two dimension objects.

    **Important** This is meant to alter dimension objects, not for geometrical calculations.

    - parameter first: The original dimension object.
    - parameter second: The altering dimension object.

    :results: The altered dimension.
*/
func - (first: MD2Dimension, second: MD2Dimension) -> MD2Dimension {
    return MD2Dimension(
        x: first.x - second.x,
        y: first.y - second.y,
        width: first.width - second.width,
        height: first.height - second.height)
}

/// A dimension object
struct MD2Dimension {
    
    /// The x position of the rectangle
    let x: Float
    /// The y position of the rectangle
    let y: Float
    /// The width of the rectangle
    let width: Float
    /// The height of the rectangle
    let height: Float
    
    /// Initialize an empty rectangle
    init() {
        self.init(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
    }
    
    /**
        Initialize a rectangle with a given dimension.
    
        - parameter x: The x position of the rectangle.
        - parameter y: The y position of the rectangle.
        - parameter The: width of the rectangle.
        - parameter The: height of the rectangle.
    */
    init(x: Float, y: Float, width:Float, height: Float) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    /**
        A string representation of the rectangle
    
        - returns: The string representation
    */
    func toString() -> String {
        return "x: \(x), y: \(y), width: \(width), height: \(height)"
    }
    
    /**
        Adds a second dimension object geometrically, forming the surrounding rectangle.

        - parameter second: The dimension object to be combined with.

        :results: The resulting dimension.
    */
    func union(second: MD2Dimension) -> MD2Dimension {
        let newX = min(self.x, second.x)
        let newY = min(self.x, second.y)
        let maxRight = max(self.x + self.width, second.x + second.width)
        let maxBottom = max(self.y + self.height, second.y + second.height)
        
        return MD2Dimension(
            x: newX,
            y: newY,
            width: maxRight - newX,
            height: maxBottom - newY)
    }
}
