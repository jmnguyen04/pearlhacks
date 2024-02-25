//
//  RecommendedView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct RecommendedView: View {
    let userEmail: String
    
    @ObservedObject var dataModel = Users.shared
    
    private var index: Int {
        for i in 0...(dataModel.users.count) {
            if(dataModel.users[i].email == userEmail) {
                return i
            }
        }
        return 0
    }
    
    let network = [
        User(name: "Lorem", email: "email1", password: "password"),
        User(name: "Loreem", email: "email2", password: "password"),
        User(name: "Loraime", email: "email3", password: "password"),
        User(name: "Lorrie", email: "email4", password: "password"),
        User(name: "Lorrie", email: "email5", password: "password"),
        User(name: "Loreemie", email: "email6", password: "password"),
        User(name: "Lora", email: "email7", password: "password"),
        User(name: "Lord", email: "email8", password: "password"),
        User(name: "Loren", email: "email9", password: "password"),
        User(name: "Lorro", email: "email10", password: "password")
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
                            HStack {
                                Group {
                                    Text("Welcome, ").foregroundStyle(.pinkText1) + Text("\(dataModel.users[index].name)").foregroundStyle(.purple1)
                                }
                                .fontWeight(.bold)
                                .font(.system(size: 35))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 40)
                                Spacer()
                                Image("woman1")
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width: 80, height: 80)
                                    .padding(.trailing, 40)
                            }
                            HStack {
                                Text("Recommendations")
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                                    .padding(.horizontal)
                                    .foregroundStyle(.purple1)
                                    .padding(.horizontal)
                                Spacer()
                            }
                            HStack {
                                Text("Explore mentors we think you'll connect with")
                                    .font(.system(size: 16))
                                    .padding(.leading)
                                    .foregroundStyle(.purple1)
                                    .padding(.horizontal)
                                Spacer()
                            }
                            ScrollView {
                                ForEach(network, id: \.self) { person in
                                    Person(person: person)
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

struct Person: View {
    //don't need state or anything, not changing data
    let person: User
    
    var body: some View {
        ZStack {
            Image("recommendedRectangle")
            VStack {
                HStack {
                    Image("woman1")
                        .resizable()
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 80, height: 80)
                        .padding(.leading, 75)
                    Spacer()
                    Text("\(person.name)")
                        .padding(.trailing, 90)
                }
                Text("Lorem ipsum: Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .frame(maxWidth: 250, alignment: .center)
            }
            .multilineTextAlignment(.center)
            .frame(alignment: .center)
        }
        .padding(.bottom, 40)
    }
}

struct RecommendedbackgroundView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image("blob4")
                }
                Spacer()
            }
            .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Image("blob5")
                    Spacer()
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct BugFixView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image("blob4")
                }
                Spacer()
            }
            .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Image("bugFix")
                    Spacer()
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView(userEmail: "TEST")
    }
}
