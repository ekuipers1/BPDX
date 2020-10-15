//
//  BeerDetailView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct DetailInfo: Identifiable {
    var id = UUID() // Conform to Identifiable
    let image: Image
    let header: Text
    let sub: Text
}


struct BeerDetailView: View {
    
    @State private var isShowingInfo: Bool = false
    @State private var details: DetailInfo? = nil
    
    
    var beer: Beer
    
    var body: some View {
        let defaults = UserDefaults.standard
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    BeerHeaderView(beer: beer)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(beer.title)
                            .font(.title)
                            .fontWeight(.thin)
                            .foregroundColor(beer.gradientColors[1])
                            .multilineTextAlignment(.center)
                        
                        // HEADLINE
                        Text(beer.headline)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        
                        // MALTSHOPS
                        MaltHopsView(beer: beer)
                        
                        
                        Button(action: {
                            
                            defaults.set(beer.alc, forKey: "alc")
                            defaults.set(beer.ibu, forKey: "ibu")
                            defaults.set(beer.availability, forKey: "when")
                            defaults.set(beer.image, forKey: "img")
                            defaults.set(beer.lightcolor, forKey: "colorLight")
                            defaults.set(beer.darkcolor, forKey: "colorDark")
                            
                            isShowingInfo = true
                        }) {
                            
                            ZStack(){
                                
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .padding(.horizontal, 20.0)
                                    .foregroundColor(beer.gradientColors[1])
                                    .frame(width: 340, height: 55,alignment: .center)
                                Text("Alcohol - Bitternes - Availability")
                            }
                            .sheet(isPresented: $isShowingInfo) {
                                SettingsView()
                            }
                        }
                        
                        // SUBHEADLINE
                        Text("The story")
                            .font(.title)
                            .fontWeight(.thin)
                            .foregroundColor(beer.gradientColors[1])
                            .multilineTextAlignment(.center)
                        
                        // DESCRIPTION
                        Text(beer.detail)
                            .multilineTextAlignment(.leading)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(beer.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct BeerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BeerDetailView(beer: beersData[1])
            .previewDevice("iPhone 11 Pro")
    }
}


struct DetailSheet: View {
    
    @Environment(\.presentationMode) var presentation
    let details: DetailInfo
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack{
                details.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0, height: 330.0)
            }
        }
    }
}

