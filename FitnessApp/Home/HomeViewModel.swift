//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    var calories: Int = 100
    var active: Int = 52
    var stand: Int = 8
    
    var activities: [Activity] = [ Activity(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, ammount: "9821"),
                                   Activity(id: 1, title: "Today Steps", subtitle: "Goal 1000", image: "figure.walk", tintColor: .red, ammount: "9821"),
                                   Activity(id: 2, title: "Today Steps", subtitle: "Goal 9000", image: "figure.walk", tintColor: .blue, ammount: "9821"),
                                   Activity(id: 3, title: "Today Steps", subtitle: "Goal 5000", image: "figure.walk", tintColor: .purple, ammount: "9821")
    ]
    
    var workouts: [Workout] = [Workout(id: 0, image: "figure.run", tintColor: .green, title: "Running", duration: "51 min", date: "Aug 4", calories: "512 kcal"),
                               Workout(id: 1, image: "figure.run", tintColor: .red, title: "Running", duration: "5 min", date: "Aug 4", calories: "12 kcal"),
                               Workout(id: 2, image: "figure.run", tintColor: .blue, title: "Running", duration: "10 min", date: "Aug 4", calories: "50 kcal"),
                               Workout(id: 3, image: "figure.run", tintColor: .purple, title: "Running", duration: "18 min", date: "Aug 4", calories: "90 kcal"),
                               Workout(id: 4, image: "figure.run", tintColor: .yellow, title: "Running", duration: "34 min", date: "Aug 4", calories: "67 kcal")]
    
}
