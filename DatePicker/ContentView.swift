//
//  ContentView.swift
//  DatePicker
//
//  Created by Shah Md Imran Hossain on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack(spacing: 10) {
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .shortened))
            DatePicker("Please enter a date ", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
