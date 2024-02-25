//
//  ChatView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct ChatView: View {
    let allChats = [
        "Sophie", "Taylor", "Mahi", "Jacqueline", "Sarah", "Toni", "Chase", "Lizzie", "Ingrid", "Xiomara", "Chelsea", "Stella"
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
                            Text("Messages: ")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .padding(.top, 30)
                            Text("Your chats with other community memebrs")
                            ScrollView {
                                ForEach(allChats, id: \.self) { person in
                                    Chat(name: person)
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

struct Chat: View {
    let name: String
    
    var body: some View {
        HStack {
                Image("woman1")
                    .resizable()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 80, height: 80)
                Text("\(name)")
                    .padding()
            Spacer()
        }
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(20)
                .frame(maxWidth: 280)
        )
        .padding()
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
