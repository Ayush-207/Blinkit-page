//
//  MockDataLayer.swift
//  BlinkitTests
//
//  Created by Arsh Poddar on 10/09/24.
//

import Foundation
@testable import Blinkit

enum MockSuccessData {

    case ProductData
    
    var getData: Any {
        switch(self){
        case .ProductData:
            var products: [Product] = []
            let productsJsonData = productsJSON.data(using: .utf8)!
            
            do {
                let productsData: ProductsData? = try JSONDecoder().decode(ProductsData.self, from: productsJsonData)
                guard let productsData = productsData else { return products }
                products = productsData.products
            } catch {
                print(error)
            }
            
            return products
        }
    }
    
}
