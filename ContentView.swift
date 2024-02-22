//
//  ContentView.swift
//  NetflixOnboardApp
//
//  Created by Nicola Kaleta on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSplashScreen = true
    
    var body: some View {
        Group {
            if isShowingSplashScreen {
                SplashScreenView()
                    .transition(.opacity)
            }
            else {
                MainView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation {
                    self.isShowingSplashScreen = false
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

// MARK: - Main View
struct MainView : View {
    var body: some View {
        ZStack {
            
        }
    }
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
