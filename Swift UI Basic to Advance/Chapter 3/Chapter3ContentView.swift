//
//  Chapter3ContentView.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

import SwiftUI

// Define gradient colors to be used in the background
let gradientColors: [Color] = [ .gradientTop, .gradientBottom ]

// Define the main view for Chapter 3 content
struct Chapter3ContentView: View {
    var body: some View {
        // Create a tab view with multiple pages
        TabView {
            // Add WelcomePage as the first tab
            WelcomePage()
            
            // Add FeaturesPage as the second tab
            FeaturesPage()
        }
        
        // Set the background gradient for the TabView
        .background(Gradient(colors: gradientColors))
        
        // Style the TabView as a page
        .tabViewStyle(.page)
        
        // Set the foreground style to white
        .foregroundStyle(.white)
    }
}

// Preview provider for Chapter3ContentView to enable SwiftUI live preview
#Preview {
    Chapter3ContentView()
}
