//
//  CategoryModel.swift
//  Blinkit
//
//  Created by Ayush Goyal on 06/09/24.
//

import Foundation

struct CategoryData: Codable {
    let categories: [Category]
}

struct Category: Codable {
    let name: String
    let image: String
}
