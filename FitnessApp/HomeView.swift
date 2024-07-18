//
//  HomeView.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 100
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                HStack {
                    
                    VStack() {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("123 kcl")
                                .bold()
                        }
                        .padding(.bottom)
                    
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            
                            Text("52 min")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            
                            Text("10 min")
                                .bold()
                        }
                        .padding(.bottom)
                    }
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories,
                                           goal: 600,
                                           color: .red)
                        ProgressCircleView(progress: $active,
                                           goal: 60,
                                           color: .blue)
                        .padding(.all, 20)
                        ProgressCircleView(progress: $stand,
                                           goal: 12,
                                           color: .green)
                        .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
