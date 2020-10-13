//
//  BeerRowView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct BeerRowView: View {
    
    var beer: Beer
    
    var body: some View {
        HStack {
            Image(beer.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 80, alignment: .center)
                .padding(.vertical, 5.0)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: beer.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(beer.title)
                    .font(.headline)
                    .fontWeight(.medium)
                Text(beer.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } 
    }
}

struct BeerRowView_Previews: PreviewProvider {
    static var previews: some View {
        BeerRowView(beer: beersData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
