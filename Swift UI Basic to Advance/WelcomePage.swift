//
//  WelcomePage.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

// MARK: Chapter 3

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 150, height: 150)
                .foregroundStyle(.tint)
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .border(.black, width: 1.5)
            
            Text("Description text")
                .font(.title2)
                .border(.black, width: 1.5)
        }
        .border(.orange, width: 1.5)
        .padding()
        .border(.purple, width: 1.5)
    }
}


#Preview {
    WelcomePage()
}
