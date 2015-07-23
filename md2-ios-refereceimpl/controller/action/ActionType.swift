//
//  ActionType.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 22.07.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//

protocol ActionType {
    
    var actionSignature: MD2String { get set }
    
    func execute()
    
    func equals(anotherAction: ActionType) -> Bool
    
}