////
////  ContentView.swift
////  Shared
////
////  Created by Jan Hovland on 21/11/2020.
////

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State private var overImage = false
    @State private var text = ""
    
    /// Virker best om musen flyttes oppover
    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                Image(systemName: "gear")
                    .onHover { over in
                        self.overImage = over
                        if over {
                            text = "Hjelpe tekst for knapp A"
                        } else {
                            text = ""
                        }
                    }
            }
            .navigationTitle("Hover test application")
        }
    }
    
}
