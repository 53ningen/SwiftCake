//
//  AB.swift
//  CakeSwift
//
//  Copyright © 2016年 gomi. All rights reserved.
//

import Foundation

public protocol AB {

    func getAB() -> String
    
}

private class ABImpl: AB {
    
    private let a: A
    
    private init(a: A) {
        self.a = a
    }
    
    private func getAB() -> String {
        return a.getA() + "b"
    }
    
}

private class SimpleAB: AB {
    
    private func getAB() -> String {
        return "AB"
    }
    
}

public protocol ABComponent {
    
    static var ab: AB { get }
    
    static func createAB() -> AB
    
}

public protocol DefaultABComponent: ABComponent {}
extension DefaultABComponent where Self: AComponent {
    
    public static func createAB() -> AB {
        return ABImpl(a: a)
    }
    
}

public protocol SimpleABComponent: ABComponent {}
extension SimpleABComponent {

    public static func createAB() -> AB {
        return SimpleAB()
    }
    
}
