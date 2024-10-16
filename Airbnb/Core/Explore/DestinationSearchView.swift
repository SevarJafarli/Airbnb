//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Sevar Jafarli on 07.10.24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination: String = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            }
        label: {
            Image(systemName: "xmark.circle")
                .imageScale(.large)
                .foregroundStyle(.black)
        }
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack(spacing: 4) {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOption = .location
            }
            
            // date selection view
            CollapsedPickerView(title: "When", description: "Add dates")
                .onTapGesture {
                    selectedOption = .dates
                }
            //num of guests view
            CollapsedPickerView(title: "Who", description: "Add guests")
                .onTapGesture {
                    selectedOption = .guests
                }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12.0))
        .padding()
        .shadow(radius: 10)
    }
}
