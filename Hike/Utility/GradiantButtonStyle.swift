//
//  GradiantButtonStyle.swift
//  Hike
//
//  Created by Eliezer Antonio on 09/10/23.
//

import Foundation
import SwiftUI

struct GrdientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // conditional statement with nil coalescing
                // codition ? a: b
                configuration.isPressed ?
                    // a: whe user pressed the button
                    LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                    :
                    // b: when the button is not pressed
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
        
            ).cornerRadius(40)
    }
}
