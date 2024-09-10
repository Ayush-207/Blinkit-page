//
//  ProductModel.swift
//  Blinkit
//
//  Created by Ayush Goyal on 06/09/24.
//

import Foundation

struct ProductsData: Codable {
    let products: [Product]
}

struct Product: Codable {
    let name: String
    let image: String
    let quantity: String
    let type: String
    let deliveryTime: String
    let discount: String
    let finalPrice: String
    let originalPrice: String
    let category: String
    
}
