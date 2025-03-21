//
//  CardView.swift
//  Hike
//
//  Created by Aran Fononi on 21/3/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .fill(LinearGradient(colors: [Color.customIndigoMedium, Color.customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
