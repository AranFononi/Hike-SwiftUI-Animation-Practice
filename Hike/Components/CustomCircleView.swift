//
//  CustomCircleView.swift
//  Hike
//
//  Created by Aran Fononi on 23/3/25.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: isAnimateGradient ? .topLeading : .bottomLeading , endPoint:  isAnimateGradient ? .bottomTrailing : .topTrailing))
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    isAnimateGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
