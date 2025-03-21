//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Aran Fononi on 21/3/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {

        ZStack {
            // MARK: - 3. Depth
            
            Color.customGreenDark
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 12)
            
            // MARK: - 2. Light
            
            Color.customGreenLight
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. Surface
            
            LinearGradient(colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .clipShape(.rect(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
