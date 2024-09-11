//
//  Product.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    
    
}

var productList = [
    Product(
        name: "Leather Couch",
        image: "f1",
        description: "",
        supplier: "IKEA",
        price: 350
    ),  Product(
        name: "Nice Couch",
        image: "f2",
        description: "",
        supplier: "Walmart",
        price: 235
    ),  Product(
        name: "Beige Couch",
        image: "f3",
        description: "",
        supplier: "Home Depo",
        price: 500
    ),  Product(
        name: "Beatiful Couch",
        image: "f4",
        description: "",
        supplier: "Ami Mebel",
        price: 310
    ),  Product(
        name: "Indoor Couch",
        image: "f5",
        description: "",
        supplier: "BRW",
        price: 400
    ),  Product(
        name: "Way Couch",
        image: "f6",
        description: "",
        supplier: "Polsye",
        price: 380
    )]
