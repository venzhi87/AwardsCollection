//
//  StarterView.swift
//  AwardsCollection
//
//  Created by Pavel Kuzovlev on 30.05.2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Maim")
                }
            CartRacingView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("CartRacing")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
        .padding()

    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
