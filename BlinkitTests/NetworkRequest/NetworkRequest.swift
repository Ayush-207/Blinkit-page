//
//  NetworkRequest.swift
//  BlinkitTests
//
//  Created by Arsh Poddar on 10/09/24.
//

import XCTest
@testable import Blinkit

final class NetworkRequest: XCTestCase {

    private var vc: ProductScreenViewController!
    private var vm: ProductScreenViewModel!
    private var mockManager = MockAPIManager()
        
    override func setUpWithError() throws {
        vc = ProductScreenViewController()
        vm = ProductScreenViewModel()
        vm.configureDependency(with: mockManager)
    }

    override func tearDownWithError() throws {
        
    }
    
    func test_setViewModel() {
        vc.loadViewIfNeeded()
        XCTAssertNotEqual(0,vc.productsVM.products.count)
        XCTAssertNotEqual(0,vc.productsVM.categories.count)
    }
    
    func test_dataInput(){
        mockManager.results = .success(MockSuccessData.ProductData)
        vm.fetchProducts()
        XCTAssertNotEqual(vm.products.count, 0)
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
