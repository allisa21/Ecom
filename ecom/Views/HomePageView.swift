//
//  HomePage.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                     
                       AppBar()
                        
                        SearchView()
                        
                        ImageSliderView()
                        
                        HStack{
                            Text("New Rivals")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(.cPrimary)
                        }
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList, id: \.id) { product in
                                NavigationLink{
                                    Text(product.name)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .environmentObject(cartManager)
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Shanghai, China")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CardView()
                        .environmentObject(cartManager)
                    ) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find the most \nluxurios")
                    .font(.largeTitle .bold())
                
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(.cPrimary)
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
