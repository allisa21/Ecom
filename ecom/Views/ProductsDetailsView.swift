//
//  ProductsDetailsView.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import SwiftUI

struct ProductsDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView {
            ZStack {
                Color.white
                
                VStack(alignment: .leading) {
                    zst
                }
            }
        }
        .ignoresSafeArea(.top)
    }
}

#Preview {
    ProductsDetailsView(product: productList[4])
}
