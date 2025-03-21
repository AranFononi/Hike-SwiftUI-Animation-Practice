//
//  CardView.swift
//  Hike
//
//  Created by Aran Fononi on 21/3/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - Card
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52)).foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Button {
                            print("the button was pressed")
                        } label: {
                            Text("Button")
                                
                        }
                        
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - Main Content
                
                ZStack {
                    Circle()
                        .fill(LinearGradient(colors: [Color.customIndigoMedium, Color.customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - Footer
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
