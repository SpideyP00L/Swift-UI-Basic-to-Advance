//
//  FeatureCard.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

import SwiftUI

// Define a custom view to display feature information
struct FeatureCard: View {
    // Properties for the feature icon name and description
    let iconName: String
    let description: String
    
    var body: some View {
        // Create a horizontal stack to layout the icon and description
        HStack {
            // Display the feature icon
            Image(systemName: iconName)
                .font(.largeTitle) // Set the font size to large title
                .frame(width: 50) // Set a fixed width for the icon
                .padding(.trailing, 10) // Add padding to the right of the icon
            
            // Display the feature description
            Text(description)
            
            // Add a spacer to push the content to the left
            Spacer()
        }
        .padding()
        
        // Add padding around the HStack
        .background {
            // Set the background with a rounded rectangle
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint) // Apply the tint color style
                .opacity(0.25) // Set the opacity to 25%
                .brightness(-0.4) // Decrease the brightness
        }
        .foregroundStyle(.white) // Set the foreground style to white
    }
}

// Preview provider for FeatureCard to enable SwiftUI live preview
#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
}
