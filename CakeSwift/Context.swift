//
//  Context.swift
//  CakeSwift
//
//  Copyright © 2016年 gomi. All rights reserved.
//

import Foundation

public typealias ContextType = protocol<AComponent, ABComponent>

public class Context {
    
    private let type: ContextType.Type
    
    public init(type: ContextType.Type) {
        self.type = type
    }
    
    public var a: A {
        return type.a
    }
    
    public var ab: AB {
        return type.ab
    }
    
}
