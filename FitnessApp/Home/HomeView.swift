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
    
    var activities: [Activity] = [ Activity(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, ammount: "9821"),
                                   Activity(id: 1, title: "Today Steps", subtitle: "Goal 1000", image: "figure.walk", tintColor: .red, ammount: "9821"),
                                   Activity(id: 2, title: "Today Steps", subtitle: "Goal 9000", image: "figure.walk", tintColor: .blue, ammount: "9821"),
                                   Activity(id: 3, title: "Today Steps", subtitle: "Goal 5000", image: "figure.walk", tintColor: .purple, ammount: "9821")
    ]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
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
                
                HStack {
                    Text("Fitness Activity")
                    
                    Spacer()
                    
                    Button {
                        print("Button Pressed")
                    } label: {
                        Text("Show more")
                    }
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .background(.blue)
                    .cornerRadius(20)

                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    ForEach(activities, id: \.id) { activity in
                        ActivityCardView(activity: activity)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
