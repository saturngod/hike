//
//  CardView.swift
//  Hike
//
//  Created by Htain Lin Shwe on 26/09/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                            LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was press")
                        } label: {
                           CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal,30)
                //MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorIndigoMedium"),Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256,height: 256)
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                //MARK: - FOOTER
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
