//
//  ContentView.swift
//  NetflixOnboardApp
//
//  Created by Nicola Kaleta on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            SplashScreenView()
        }
    }
}

#Preview {
    ContentView()
}

// MARK: - Splash screen view
struct SplashScreenView : View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            LottieView(filename: "netflix")
        }
    }
}
