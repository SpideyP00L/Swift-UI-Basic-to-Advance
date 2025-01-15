//
//  Chapter3ContentView.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

import SwiftUI

struct Chapter3ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    Chapter3ContentView()
}
