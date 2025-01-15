//
//  WeatherForecastView.swift
//  Swift UI Basic to Advance
//
//  Created by Jeet Panchal on 2025-01-15.
//

import SwiftUI

// Define a custom view named WeatherForecastView
// This view displays weather forecasts for multiple days horizontally
struct WeatherForecastView: View {
    // Body of the view, describing the UI
    var body: some View {
        // Use a horizontal stack to align DayForecast elements horizontally
        HStack {
            // Display forecast for Monday
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            // Display forecast for Tuesday
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

// Preview provider to enable SwiftUI live preview for WeatherForecastView
#Preview {
    WeatherForecastView()
}

// Define a custom view named DayForecast to represent daily weather forecast
struct DayForecast: View {
    // Properties to hold the forecast data
    let day: String       // Day of the week (e.g., "Mon")
    let isRainy: Bool     // Boolean indicating if it's rainy (true) or sunny (false)
    let high: Int         // High temperature for the day
    let low: Int          // Low temperature for the day
    
    // Computed property to determine the weather icon name based on rain status
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill" // System icon for rainy weather
        } else {
            return "sun.max.fill" // System icon for sunny weather
        }
    }
    
    // Computed property to determine the weather icon color based on rain status
    var iconColor: Color {
        if isRainy {
            return Color.blue // Blue color for rainy weather icon
        } else {
            return Color.yellow // Yellow color for sunny weather icon
        }
    }
    
    // Body of the DayForecast view, describing the UI for a single day's forecast
    var body: some View {
        // Use a vertical stack to align text and image elements vertically
        VStack {
            // Display the day of the week
            Text(day)
                .font(Font.headline) // Use headline font for day text
            
            // Display the weather icon
            Image(systemName: iconName)
                .foregroundStyle(iconColor) // Set the icon color
                .font(Font.largeTitle) // Use large title font for the icon
                .padding(5) // Add padding around the icon
            
            // Display the high temperature
            Text("High: \(high)°F")
                .fontWeight(Font.Weight.semibold) // Use semibold font weight for high temperature
            
            // Display the low temperature
            Text("Low: \(low)°F")
                .fontWeight(Font.Weight.medium) // Use medium font weight for low temperature
                .foregroundStyle(Color.secondary) // Use secondary color for low temperature text
        }
        .padding() // Add padding around the VStack
    }
}
