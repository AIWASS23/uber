//
//  LocationSearchResultCell.swift
//  Uber
//
//  Created by Marcelo de Araújo on 31/10/2023.
//

import SwiftUI

struct LocationSearchResultCell: View {
    let title: String
    let subTitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(Color.blue)
                .tint(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title) 
                    .font(.body)
                Text(subTitle)
                    .font(.system(size: 15))
                    .foregroundColor(Color(.systemGray))
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell(title: "title", subTitle: "title")
}

