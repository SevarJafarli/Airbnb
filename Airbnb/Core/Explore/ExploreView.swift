//
//  ExploreView.swift
//  Airbnb
//
//  Created by Sevar Jafarli on 06.10.24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 16) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                        }
                        
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
