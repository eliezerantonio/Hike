//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Eliezer Antonio on 09/10/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: -3 depth
            Color.customGreenDark.cornerRadius(40).offset(y: 12)
            
            // MARK: -2 light
            Color.customGreenLight.cornerRadius(40).offset(y: 3)
                .opacity(0.85)
            
            // MARK: -1 surface
            LinearGradient(
                colors:
                    [
                        Color.customGreenLight,
                        Color.customGreenMedium
                    ],
                startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(40)
            
            
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
