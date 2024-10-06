//
//  ContentView.swift
//  LargeText
//
//  Created by 金原有志 on 2024/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            FirstView()
        }
    }
}
    
struct FirstView: View {
    var body: some View {
        List {
            NavigationLink {
                TextScreen(str: s)
            } label: {
                Text("Text")
            }
            NavigationLink {
                LazyTextScreen(str: largeString)
            } label: {
                Text("LazyText")
            }
            NavigationLink {
                LargeTextScreen(str: largeString)
            } label: {
                Text("LargeText")
            }
        }
    }
}

#Preview {
    ContentView()
}
