//
//  CartManager.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import Foundation

final class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{ $0.id != product.id}
        total -= product.price
    }
    
}
