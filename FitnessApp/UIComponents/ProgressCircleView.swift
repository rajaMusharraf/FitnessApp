//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(color.opacity(0.3), lineWidth: 20)
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100),
                       goal: 200, color: .red)
}
