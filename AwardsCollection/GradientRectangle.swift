//
//  GradientRectangle.swift
//  AwardsCollection
//
//  Created by Pavel Kuzovlev on 30.05.2022.
//

import SwiftUI

struct GradientRectangle: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                    
                        .frame(width: width * 0.7, height: height * 0.7)
                        .rotationEffect(.degrees(Double(iteration) * 60))
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
    }
}

struct GradientRectangle_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangle()
            .frame(width: 200, height: 200)
    }
}
