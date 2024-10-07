//
//  StarRateView.swift
//  Airbnb
//
//  Created by Sevar Jafarli on 06.10.24.
//

import SwiftUI

struct StarRateView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text("4.6")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    StarRateView()
}
