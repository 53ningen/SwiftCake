//
//  A.swift
//  CakeSwift
//
//  Copyright © 2016年 gomi. All rights reserved.
//

import Foundation

public protocol A {
    
    func getA() -> String
    
}

private class AImpl: A {
    
    private func getA() -> String {
        return "a"
    }
    
}

public protocol AComponent {

    static var a: A { get }
    static func createA() -> A

}

public protocol DefaultAComponent: AComponent {}
extension DefaultAComponent {
        
    public static func createA() -> A {
        return AImpl()
    }
    
}
