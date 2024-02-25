//
//  HomeView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct HomeView: View {
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
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                RecommendedbackgroundView()
                VStack {
                    Image("woman1")
                        .resizable()
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 230, height: 230)
                    Text("\(dataModel.users[index].name)")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Text("\(dataModel.users[index].isMentorStringRep)")
                        .font(.system(size: 22))
                    Text("\(dataModel.users[index].bio)")
                        .padding()
                        .background(
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(20)
                        )
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 340, alignment: .center)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(userEmail: "TSET")
    }
}

