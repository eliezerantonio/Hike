//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Eliezer Antonio on 09/10/23.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK - Properties
    
    @State private var randomCircle : Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool  = false
    
    // Mark: - FUNCTIONS
    
    // 1.  RANDOM COORDINATE
    
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    // 2.  RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    // 3.  RANDOM SCALE
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // 4.  RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 00.5...1.0)
    }
    
    // 5.  RANDOM DELAY
    
    func randomDelay () -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id:\.self) { item in
                Circle().foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x:randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                          ) {
                            isAnimating = true
                        }

                    })
             }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    
    MotionAnimationView().background(Circle().fill(.teal) )
    
}
