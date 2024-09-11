//
//  SearchView.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search for furniture", text: $search)
                    .padding()
            }
            .background(.cSecondary)
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(.cPrimary)
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
