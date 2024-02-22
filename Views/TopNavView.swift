//
//  TopNavView.swift
//  NetflixOnboardApp
//
//  Created by Nicola Kaleta on 22/02/2024.
//

import SwiftUI

struct TopNavView: View {
    var body: some View {
        VStack {
            HStack {
                Image("netflixlogo")
                    .resizable()
                    .frame(width: 110, height: 62)
                
                Spacer()
                
                Group {
                    Text("Help")
                    Spacer()
                        .frame(width: 10)
                    Text("Privacy")
                }
                .font(.headline)
                .foregroundStyle(.white)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TopNavView()
}
