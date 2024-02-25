//
//  HomebaseView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/25/24.
//


import SwiftUI

struct HomebaseView: View {
    let userEmail: String
    
    @State private var showNextPage = false
    
    @ObservedObject var dataModel = Users.shared
    
    private var index: Int {
        for i in 0...(dataModel.users.count) {
            if(dataModel.users[i].email == userEmail) {
                return i
            }
        }
        return 0
    }
    
    
    var body: some View {
        ZStack {
            Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
            )
            RecommendedbackgroundView()
            TabView {
                HomeView(userEmail: userEmail)
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                ChatView()
                    .tabItem {
                        Label("Chat", systemImage: "rectangle.3.group.bubble")
                    }
                RecommendedView(userEmail: userEmail)
                    .tabItem {
                        Label("Network", systemImage: "person.2.crop.square.stack")
                    }
                CommunityView()
                    .tabItem {
                        Label("Community", systemImage: "list.bullet.clipboard")
                    }
            }
            .tint(.purple1)
        }
    }
}

#Preview {
    HomebaseView(userEmail: "Test email")
}
