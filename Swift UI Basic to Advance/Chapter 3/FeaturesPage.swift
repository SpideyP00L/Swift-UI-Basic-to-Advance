//
//  FeaturesPage.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

import SwiftUI
// Define the FeaturesPage view to display a list of features

struct FeaturesPage: View {
    var body: some View {
        // Create a vertical stack to layout the feature cards
        VStack(spacing: 30) {
            // Display the title for the Features page
            Text("Features") .font(.title) // Set the font size to title
                .fontWeight(.semibold) // Set the font weight to semibold
                .padding(.bottom) // Add padding to the bottom of the text
                .padding(.top, 100) // Add padding to the top of the text
            
            // Add a FeatureCard for the first feature
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            // Add a FeatureCard for the second feature
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            // Add a spacer to push the content to the top
            Spacer()
        }
        .padding() // Add padding around the VStack
    }
}

// Preview provider for FeaturesPage to enable SwiftUI live preview
#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity) // Set the maximum height to infinity
        .background(Gradient(colors: gradientColors)) // Set the background gradient
        .foregroundStyle(.white) // Set the foreground style to white
}
