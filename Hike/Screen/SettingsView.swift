//
//  SettingsView.swift
//  Hike
//
//  Created by Htain Lin Shwe on 26/09/2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List {
            //MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    VStack(spacing: -10) {
                        Text("HIKE")
                            .font(.system(size: 66,weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks ?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a wealk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                
            }//: HEADER
           
            
            //MARK: - SECTION: ICON
            
            Section(header: Text("Alternate Icons")) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices,id:\.self) { item in
                            Button {
                                print("Icon \(alternateAppIcons[item]) was pressed.")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    
                                    if error != nil {
                                        print("Faield request")
                                    }
                                    else {
                                        print("Success")
                                    }
                                    
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                    .padding(.top,12)
                }
                Text("choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom,12)
            }
            
            .listRowSeparator(.hidden)
            
            //MARK: - SECTION: ABOUT
            
            Section(
                header: Text("About the App"),
                footer: HStack {
                    Spacer()
                    Text("Copyright All right reserved")
                    Spacer()
                }
                    .padding(.vertical,8)
            ) {
//                LabeledContent("Application", value: "Hike")
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility ", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology ", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                
                CustomListRowView(rowLabel: "Version ", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer ", rowIcon: "ellipsis.curlybraces", rowContent: "John", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer ", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Website ", rowIcon: "globe", rowTintColor: .purple, rowLinkLabel: "Acedmy", rowLinkDestination: "https://www.google.com")
                
            }//:SECTIOn
        }
       
       
    }
}

#Preview {
    SettingsView()
}
