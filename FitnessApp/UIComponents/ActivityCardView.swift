//
//  ActivityCardView.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct ActivityCardView: View {
    var activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(activity.title)
                        Text(activity.subtitle)
                            .font(.caption )
                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                }
                Text(activity.ammount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCardView(
        activity: Activity(
            id: 0,
            title: "Today Calories",
            subtitle: "Goal 900",
            image: "flame",
            tintColor: .red,
            ammount: "200"
        )
    )
}

struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let ammount: String
}
