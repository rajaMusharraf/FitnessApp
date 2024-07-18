//
//  HomeView.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
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
                                
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                        
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                
                                Text("\(viewModel.active)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                            .padding(.bottom)
                        }
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories,
                                               goal: 600,
                                               color: .red)
                            ProgressCircleView(progress: $viewModel.active,
                                               goal: 60,
                                               color: .blue)
                            .padding(.all, 20)
                            ProgressCircleView(progress: $viewModel.stand,
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
                        ForEach(viewModel.activities, id: \.id) { activity in
                            ActivityCardView(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                        
                        Spacer()
                        
                        NavigationLink(destination: EmptyView()) {
                            Text("Show more")
                        }
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .background(.blue)
                        .cornerRadius(20)
                        

                    }
                    .padding([.horizontal, .top])
                    
                    LazyVStack {
                        ForEach(viewModel.workouts, id: \.id) { workout in
                            WorkoutCardView(workout: workout)
                        }
                    }
                    .padding(.horizontal)

                }
            }
        }
    }
}

#Preview {
    HomeView()
}

