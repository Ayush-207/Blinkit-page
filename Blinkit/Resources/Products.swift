//
//  Products.swift
//  Blinkit
//
//  Created by Ayush Goyal on 06/09/24.
//

import UIKit
let productsJSON = """
{
    "products" : [
        {
        "name": "Kissan Tomato Ketchup",
        "image": "ketchup",
        "quantity": "200g",
        "type": "Tomato Ketchup",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Tomato Ketchup"
    },
   {
       "name": "Kissan Tomato Ketchup",
       "image": "ketchup",
       "quantity": "200g",
       "type": "Tomato Ketchup",
       "deliveryTime": "12 mins",
       "discount": "5% OFF",
       "finalPrice": "₹57",
       "originalPrice": "MRP ₹60",
       "category": "Tomato Ketchup"
   },
        {
        "name": "Kissan Tomato Ketchup",
        "image": "ketchup",
        "quantity": "200g",
        "type": "Tomato Ketchup",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Tomato Ketchup"
    },
   {
       "name": "Kissan Tomato Ketchup",
       "image": "ketchup",
       "quantity": "200g",
       "type": "Tomato Ketchup",
       "deliveryTime": "12 mins",
       "discount": "5% OFF",
       "finalPrice": "₹57",
       "originalPrice": "MRP ₹60",
       "category": "Tomato Ketchup"
   },
        {
        "name": "Kissan Tomato Ketchup",
        "image": "ketchup",
        "quantity": "200g",
        "type": "Tomato Ketchup",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Tomato Ketchup"
    },
   {
       "name": "Kissan Tomato Ketchup",
       "image": "ketchup",
       "quantity": "200g",
       "type": "Tomato Ketchup",
       "deliveryTime": "12 mins",
       "discount": "5% OFF",
       "finalPrice": "₹57",
       "originalPrice": "MRP ₹60",
       "category": "Tomato Ketchup"
   },
        {
        "name": "Kissan Tomato Ketchup",
        "image": "ketchup",
        "quantity": "200g",
        "type": "Tomato Ketchup",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Tomato Ketchup"
    },
   {
       "name": "Kissan Tomato Ketchup",
       "image": "ketchup",
       "quantity": "200g",
       "type": "Tomato Ketchup",
       "deliveryTime": "12 mins",
       "discount": "5% OFF",
       "finalPrice": "₹57",
       "originalPrice": "MRP ₹60",
       "category": "Tomato Ketchup"
   },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Asian Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
    {
        "name": "Chings Shezwan Chuney",
        "image": "sauce",
        "quantity": "200g",
        "type": "Sauce",
        "deliveryTime": "12 mins",
        "discount": "5% OFF",
        "finalPrice": "₹57",
        "originalPrice": "MRP ₹60",
        "category": "Asian Sauce"
    },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Smuckers strawberry jam",
            "image": "jams",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Jam & Spreads"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        },
        {
            "name": "Hellman's real mayo",
            "image": "mayonnaise",
            "quantity": "200g",
            "type": "Jam",
            "deliveryTime": "12 mins",
            "discount": "5% OFF",
            "finalPrice": "₹57",
            "originalPrice": "MRP ₹60",
            "category": "Mayonnaise"
        }]
}
"""
