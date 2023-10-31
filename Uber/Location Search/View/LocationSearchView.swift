//
//  LocationSearchView.swift
//  Uber
//
//  Created by Marcelo de Araújo on 31/10/2023.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var showLocationSearchView: Bool
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(Color(.systemGray))
                        .frame(width: 6, height: 6)
                }
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                    
                    TextField("Where to ?", text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider()
                .padding(.vertical)
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) { result in
                        LocationSearchResultCell(title: result.title, subTitle: result.subtitle)
                            .onTapGesture {
                                viewModel.selectLocation(searchCompletion: result)
                                showLocationSearchView.toggle()
                            }
                    }
                }
            }
            
        }.background(Color(.systemBackground))
    }
}

#Preview {
    LocationSearchView(showLocationSearchView: .constant(true))
}
