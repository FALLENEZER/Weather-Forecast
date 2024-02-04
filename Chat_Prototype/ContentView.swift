//
//  ContentView.swift
//  Chat_Prototype
//
//  Created by Даниил Игумнов on 03.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50 )
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: true, high: 30, low: 10)
                
                DayForecast(day: "Thr", isRainy: false, high: 45, low: 35)
                
                DayForecast(day: "Fri", isRainy: true, high: 50, low: 10)
                
                DayForecast(day: "Sat", isRainy: false, high: 45, low: 5)
                DayForecast(day: "Sun", isRainy: true, high: 70, low: 60)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
                
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
