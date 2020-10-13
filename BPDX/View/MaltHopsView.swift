//
//  MaltHopsView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct MaltHopsView: View {
    
    var beer: Beer
    let maltshops: [String] = ["Malt", "Hops"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Malt & Hops") {
                ForEach(0..<maltshops.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "lasso.sparkles")
                            Text(maltshops[item])
                        }
                        .foregroundColor(beer.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(beer.malthops[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct MaltHopsView_Previews: PreviewProvider {
    static var previews: some View {
        MaltHopsView(beer: beersData[0])
            //            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
