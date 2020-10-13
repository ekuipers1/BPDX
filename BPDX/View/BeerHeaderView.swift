//
//  BeerHeaderView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct BeerHeaderView: View {
    
    var beer: Beer
    
    @State private var isAnimatingImage: Bool = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: beer.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(beer.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 40.0)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.2)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}


struct BeerHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BeerHeaderView(beer: beersData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
