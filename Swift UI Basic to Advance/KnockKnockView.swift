//
//  KnockKnockView.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//


// MARK: Chapter 1

import SwiftUI
// Define a custom view named KnockKnockView

struct KnockKnockView: View {
    // Body of the view, describing the UI
    
    var body: some View {
        // Use a vertical stack to align text elements vertically
        
        VStack {
            // First text element with the "Knock, knock!" message
            // Padding adds space around the text
            // Background color is yellow with rounded corners
            Text("Knock, knock!") .padding() .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            
            // Second text element with the "Who's there?" message
            // Padding adds space around the text
            // Background color is teal with rounded corners
            Text("Who's there?") .padding() .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        }
        
        // Add padding around the VStack for spacing from the edges
        .padding()
    }
}

// Preview provider to enable SwiftUI live preview for KnockKnockView
#Preview {
    KnockKnockView()
}
