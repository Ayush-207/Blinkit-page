//
//  CategoryTableViewTests.swift
//  BlinkitTests
//
//  Created by Arsh Poddar on 10/09/24.
//

import XCTest
@testable import Blinkit

final class CategoryTableViewTests: XCTestCase {
    
    static var vc: ProductScreenViewController!
    
    var vc: ProductScreenViewController {
       return CategoryTableViewTests.vc
    }
    
    override class func setUp() {
        vc = ProductScreenViewController()
    }

    func test_tableView_count(){
        
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
