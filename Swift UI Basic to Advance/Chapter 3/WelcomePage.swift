//
//  WelcomePage.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

// MARK: Chapter 3

import SwiftUI

// Define the WelcomePage view to display a welcome message
struct WelcomePage: View {
    var body: some View {
        // Create a vertical stack to layout the welcome content
        VStack {
            // Create a ZStack to layer the icon on top of a rounded rectangle
            ZStack {
                // Add a rounded rectangle as the background
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150) // Set the size of the rectangle
                    .foregroundStyle(.tint) // Apply the tint color style
                
                // Add an icon image on top of the rounded rectangle
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70)) // Set the font size
                    .foregroundStyle(.white) // Set the foreground style to white
            }
            
            // Display the welcome message title
            Text("Welcome to MyApp")
                .font(.title) // Set the font size to title
                .fontWeight(.semibold) // Set the font weight to semibold
                .padding(.top) // Add padding to the top of the text
            
            // Display the description text
            Text("Description text") .font(.title2) // Set the font size to title2
        }
        .padding() // Add padding around the VStack
    }
}
// Preview provider for WelcomePage to enable SwiftUI live preview
#Preview {
    WelcomePage()
}
