//
//  MockNetworkLayer.swift
//  BlinkitTests
//
//  Created by Arsh Poddar on 10/09/24.
//

import Foundation
@testable import Blinkit

class MockAPIManager: APIManagerProtocol {
    
    var results: Result<Any,Error>!
    
    func getProducts() -> [Blinkit.Product]  {
        switch(results){
        case .success(let data as [Product]):
            return data
        case .error(let error):
            print(error)
        }
    }
    
    func getCategories() -> [Blinkit.Category] {
        <#code#>
    }
    
    
}
