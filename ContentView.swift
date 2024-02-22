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
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.8)
    }
    
    @State private var selectedPage = 0
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Group {
                if selectedPage == 0 {
                    BackgroundView()
                }
            }
            
            content
            
            if selectedPage >= 1 && selectedPage <= 3 {
                TopNavView()
            }
        }
    }
    
    private var content: some View {
        VStack {
            TabView(selection: $selectedPage) {
                ForEach(0..<testData.count, id: \.self) { index in
                    CardView(card: testData[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .offset(y: 20)
            
            signInButton
        }
    }
    
    private var signInButton : some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 380, height: 75)
            .foregroundStyle(.buttonbg)
            .overlay {
                Text("SIGN IN")
                    .fontWeight(.regular)
                    .font(.system(size: 26))
                    .foregroundStyle(.white)
                    .shadow(color: .gray, radius: 1, x: 1, y: 1)
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
