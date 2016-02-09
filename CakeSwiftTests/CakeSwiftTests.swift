//
//  CakeSwiftTests.swift
//  CakeSwiftTests
//
//  Copyright © 2016年 gomi. All rights reserved.
//

import XCTest

@testable import CakeSwift

public class ApplicationContext: DefaultAComponent, DefaultABComponent {
    
    
    public static let a: A = ApplicationContext.createA()
    
    public static let ab: AB = ApplicationContext.createAB()
    
}

public class ApplicationContext2: DefaultAComponent, SimpleABComponent {
    
    
    public static let a: A = ApplicationContext2.createA()
    
    public static let ab: AB = ApplicationContext2.createAB()
    
}

class CakeSwiftTests: XCTestCase {
    
    func testExample() {
        let context = Context(type: ApplicationContext.self)
        XCTAssertEqual(context.a.getA(), "a")
        XCTAssertEqual(context.ab.getAB(), "ab")
    }
    
    func testExample2() {
        let context2 = Context(type: ApplicationContext2.self)
        XCTAssertEqual(context2.a.getA(), "a")
        XCTAssertEqual(context2.ab.getAB(), "AB")
    }
    
}
