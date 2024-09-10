//
//  ProductViewModel.swift
//  Blinkit
//
//  Created by Ayush Goyal on 06/09/24.
//

import UIKit

class ProductScreenViewModel {
    var products: [Product] = []
    var categories: [Category] = []
    
    func fetchProducts(with categoryIndex: Int = 0) {
        let allProducts = APIManager.shared.getProducts()
        guard categoryIndex>=0 && categoryIndex<categories.count else { return }
        let category = categories[categoryIndex]
        
        products = allProducts.filter { $0.category == category.name }
    }
   
    func fetchCategories() {
        categories = APIManager.shared.getCategories()
    }
}
