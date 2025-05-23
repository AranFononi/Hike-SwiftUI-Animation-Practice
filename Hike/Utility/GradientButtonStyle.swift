//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Aran Fononi on 23/3/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ? LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) : 
            LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            .clipShape(.capsule(style: .continuous))
            //.buttonStyle(.borderedProminent)
            //.tint(.indigo)
    }
}
