//
//  ContentView.swift
//  CustomViewModifiers
//
//  Created by Leon Chamoun on 04.01.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                createButtonList(title: "Primary", style: .primary)
                createButtonList(title: "Secondary", style: .secondary)
                createButtonList(title: "Standard", style: .standard)
            }
        }
    }
    
    func createButtonList<Style: ButtonStyle>(title: String, style: Style) -> some View {
        VStack {
            Text("\(title) Buttons")
                .font(.title)
            
            CustomButtonView(title: "Hello World!",
                             buttonStyle: style) {
                print("Hello World!")
            }
            
            CustomButtonView(title: "Encrypt",
                             icon: "lock.fill",
                             buttonStyle: style) {
                print("Encrypt Text!")
            }
            
            CustomNavigationButton(title: "Navigation Button",
                                   buttonStyle: style) {
                Text("New View")
            }
        }
    }
}

#Preview {
    ContentView()
}
