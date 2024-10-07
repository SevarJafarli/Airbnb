//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Sevar Jafarli on 06.10.24.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            //images
            ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            //listing details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .bold()
                        .foregroundStyle(.black)
                    Text("12 ml away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$567")
                            .bold()
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                .font(.footnote)
                
                Spacer()
                //rating
                StarRateView()
            }
        }
    }
}

#Preview {
    ListingItemView()
}
