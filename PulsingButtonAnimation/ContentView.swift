//
//  ContentView.swift
//  PulsingButtonAnimation
//
//  Created by taco on 8/4/20.
//  Copyright © 2020 Wrecks. All rights reserved.
//
/*
 https://www.hackingwithswift.com/books/ios-swiftui/customizing-animations-in-swiftui
 */


import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap here") {
            //do some stuff
        }
        .padding(50)
        .background(Color.blue)
        .foregroundColor(Color.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.blue)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
            .onAppear {
                self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
