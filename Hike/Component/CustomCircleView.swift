//
//  CustomCircleView.swift
//  Hike
//
//  Created by Eliezer Antonio on 09/10/23.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradiant: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        
                        .customIndigoMedium,
                        .customSalmonLight,
                    ],
                    startPoint: isAnimateGradiant ? .topLeading : .bottomLeading,
                    endPoint:   isAnimateGradiant ? .bottomTrailing: .topTrailing
                )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradiant.toggle()
                    }
                }
            MotionAnimationView()

          
        }  //:ZStack
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
