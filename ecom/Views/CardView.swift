//
//  CardView.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your total is ")
                    
                    Spacer()
                    
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your cart is empty")
                
            }
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

#Preview {
    CardView()
        .environmentObject(CartManager())
}
