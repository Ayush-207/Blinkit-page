//
//  APIManager.swift
//  Blinkit
//
//  Created by Ayush Goyal on 06/09/24.
//

import Foundation

class APIManager {
    
    private init() {}
        
    static let shared: APIManager = APIManager()
        
    func getProducts() -> [Product]{
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
    
    func getCategories() -> [Category]{
        var categories: [Category] = []
        let categoriesJsonData = categoriesJson.data(using: .utf8)!
        let categoriesData: CategoryData? = try? JSONDecoder().decode(CategoryData.self, from: categoriesJsonData)
        guard let categoriesData = categoriesData else { return categories }
        
        categories = categoriesData.categories
        return categories
    }
}
