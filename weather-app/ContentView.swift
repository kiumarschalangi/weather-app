//
//  ContentView.swift
//  weather-app
//
//  Created by kiumars on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput : String=""
    var body: some View {
        
        VStack {
            TextField("Enter city name",text: $userInput)
                .font(.title)
            Divider()
            Text(userInput)
                .font(.body)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
