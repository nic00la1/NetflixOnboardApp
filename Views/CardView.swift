//
//  CardView.swift
//  NetflixOnboardApp
//
//  Created by Nicola Kaleta on 22/02/2024.
//

import SwiftUI

struct CardView: View {
    var card : Card
    
    var body: some View {
        VStack {
            
            Image(card.image)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
            
            Text(card.title)
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Text(card.description)
                .fontWeight(.light)
                .font(.system(size: 22))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .frame(width: 335, height: 100)
                .padding(5)
        }
        .padding()
    }
}

#Preview {
    CardView(card: testData[1])
}
