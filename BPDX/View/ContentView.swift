//
//  ContentView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingSettings: Bool = false

    var beers: [Beer] = beersData
    
    var body: some View {
        NavigationView {
          List {
            ForEach(beers.shuffled()) { item in
                NavigationLink(destination: BeerDetailView(beer: item)) {
                    BeerRowView(beer: item)
                  .padding(.vertical, 4)
              }
            }
          }
          .navigationTitle("Deshutes Beers")
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
