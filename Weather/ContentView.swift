//
//  ContentView.swift
//  Weather
//hello
//hello2
//  Created by Timothy Hart on 6/10/25.
//
// This imports SwiftUI
import SwiftUI

struct ContentView: View {
    
    @State private var vm = ViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                HStack {
                    ForEach(vm.dailyForecasts) { forecast in
                        DayForecast(day: forecast.day, isRainy: forecast.isRainy, high: forecast.high, low: forecast.low)
                    }
                }
            }
           
        }
    }
}

#Preview {
    ContentView()
}
