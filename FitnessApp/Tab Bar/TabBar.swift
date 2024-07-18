//
//  TabBar.swift
//  FitnessApp
//
//  Created by Musharaf on 18/07/2024.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearence = UITabBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.stackedLayoutAppearance.selected.iconColor = .green
        appearence.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearence
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("House")
                }
            HistoricView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    TabBar()
}
