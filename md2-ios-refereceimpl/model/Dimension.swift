//
//  Dimension.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 03.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

struct Dimension {
    
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
}