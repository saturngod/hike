//
//  CustomButtonView.swift
//  Hike
//
//  Created by Htain Lin Shwe on 26/09/2023.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:[.white,.customGreenLight,.customGreenMedium],
                        startPoint: .top, endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom),
                    lineWidth: 4.0)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                
        }
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
