//
//  WorkoutCardView.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct WorkoutCardView: View {
    @State var workout: Workout
    
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(spacing: 16) {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                }
                HStack {
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCardView(workout: Workout(id: 0,
                                     image: "figure.run",
                                     tintColor: .green,
                                     title: "Running",
                                     duration: "23 min",
                                     date: "3 Aug",
                                     calories: "200 kcal"))
}

struct Workout {
    let id: Int
    let image: String
    let tintColor: Color
    let title: String
    let duration: String
    let date: String
    let calories: String
}
