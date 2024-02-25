//
//  CommunityView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct CommunityView: View {
    let allChats = [
        "Tech Interview Tips", "My Experience at ___ Company", "How to Start a DEI Initiative", "How to Land a Summer Internship", "Barriers for Women in Tech", "Favorite IDE?", "Ethical AI", "Fix My Bug Pls :(", "Being a Queer Woman in Tech", "Resume Tips", "Undergrad Advice", "How to Post to Community"
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                BugFixView()
                VStack {
                    ZStack {
                        Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                        )
                        RecommendedbackgroundView()
                        VStack {
                            Text("Community: ")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .padding(.top, 30)
                            Text("See Posts by Community")
                            ScrollView {
                                ForEach(allChats, id: \.self) { person in
                                    Blog(name: person)
                                }
                            }
                            .scrollIndicators(.hidden)
                        }
                    }
                    Color.clear
                        .frame(height: 10)
                }
            }
        }
    }
}
    

struct Blog: View {
    let name: String
    
    var body: some View {
                Text("\(name)")
                    .padding()
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(20)
                .frame(width: 280)
        )
        .padding()
    }
}


struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
