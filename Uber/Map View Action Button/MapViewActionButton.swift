//
//  MapViewActionButton.swift
//  Uber
//
//  Created by Marcelo de Araújo on 31/10/2023.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                if showLocationSearchView {
                    showLocationSearchView.toggle()
                }
            }
        } label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
}

#Preview {
    MapViewActionButton(showLocationSearchView: .constant(true))
}

