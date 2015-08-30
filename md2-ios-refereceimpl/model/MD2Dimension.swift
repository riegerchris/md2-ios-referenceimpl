//
//  MD2Dimension.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

infix operator + {}
infix operator - {}

// This is meant to alter dimensions. For geometrical calculation of two distinct dimensions see union()
func + (first: MD2Dimension, second: MD2Dimension) -> MD2Dimension {
    return MD2Dimension(
        x: first.x + second.x,
        y: first.y + second.y,
        width: first.width + second.width,
        height: first.height + second.height)
}

func - (first: MD2Dimension, second: MD2Dimension) -> MD2Dimension {
    return MD2Dimension(
        x: first.x - second.x,
        y: first.y - second.y,
        width: first.width - second.width,
        height: first.height - second.height)
}

struct MD2Dimension {
    
    let x: Float
    let y: Float
    let width: Float
    let height: Float
    
    init() {
        self.init(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
    }
    
    init(x: Float, y: Float, width:Float, height: Float) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    func toString() -> String {
        return "x: \(x), y: \(y), width: \(width), height: \(height)"
    }
    
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