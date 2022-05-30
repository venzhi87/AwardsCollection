//
//  MainView.swift
//  AwardsCollection
//
//  Created by Pavel Kuzovlev on 30.05.2022.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .animation(.default, value: awardIsShowing)
                }
            }
            Spacer()
            if awardIsShowing {
                GradientRectangle()
                    .frame(width: 250, height: 250)
                    .transition(.move(edge: .leading))
            }
//            GradientRectangle()
//                .frame(width: 250, height: 250)
//                .offset(x: awardIsShowing ? 0 : -UIScreen.main.bounds.width)
//                .animation(.default, value: awardIsShowing)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
