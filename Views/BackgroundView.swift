//
//  BackgroundView.swift
//  NetflixOnboardApp
//
//  Created by Nicola Kaleta on 22/02/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Image("screen")
                .resizable()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            Image("gradient")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    BackgroundView()
}
