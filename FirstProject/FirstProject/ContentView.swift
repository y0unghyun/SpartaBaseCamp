//
//  ContentView.swift
//  FirstProject
//
//  Created by 영현 on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .padding(.leading, 0.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
