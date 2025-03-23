//
//  SettingsView.swift
//  Hike
//
//  Created by Aran Fononi on 23/3/25.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    private let alternateAppIcons: [String] = ["AppIcon-Backpack", "AppIcon-Camera", "AppIcon-Campfire", "AppIcon-MagnifyingGlass", "AppIcon-Map", "AppIcon-Mushroom"]
    
    var body: some View {
        List {
            Section {
                // MARK: - Section Header
                HStack{
                    
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors'Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                    
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you fing \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos, but is even better once you are actually there. The hike that you hoped to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } // End of the Header Section
            .listRowSeparator(.hidden)
            
            // MARK: - Section Icons
            
            Section(header: Text("Alternate Icons"), footer: HStack{
                Spacer()
                Text("Copyright © All rights reserved. Version 1.0")
                    .fontWeight(.light)
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing : 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("Icon \(alternateAppIcons[item]) was Pressed!!!")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    if error != nil {
                                        print("Failed request to update the app icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Successfully updated the app icon!")
                                    }
                                }
                            } label: {
                                Image(alternateAppIcons[item])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .clipShape(.buttonBorder)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                } // Scroll View
                .padding(.top, 12)
                Text("Choose your favorite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                    
            } // SECTION
            .listRowSeparator(.hidden)
            
            // MARK: - Section About
            Section(header: Text("ABOUT THE APP"), footer: HStack{
                Spacer()
                Text("Copyright © All rights reserved. Version 1.0")
                    .fontWeight(.light)
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Aran Apps", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert", rowTintColor: .pink)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo , rowLinkLabel: "Github" , rowLinkDestination: "https://github.com/AranFononi")
                    
            } // SECTION
            
        } // List
    }
}

#Preview {
    SettingsView()
}
