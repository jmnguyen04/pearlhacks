//
//  MentorMenteeSelectionVeiw.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

//CLASS
//  STATIC ARRAY OF USER STRUCTS

import SwiftUI

struct MentorMenteeView: View {
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
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                MMblobsBackground()
                Image("rectangle1")
                VStack {
                    Text("I want to be a...")
                        .font(.system(size: 26))
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    HStack {
                        Group {
                            Image("mentorimage")
                            Image("menteeimage")
                        }
                        .padding(.horizontal, 40)
                    }
                    .padding(.bottom)
                    HStack {
                        Group {
                            Button("Mentor") {
                                //search through array to find email instance
                                if(dataModel.users[index].email == userEmail) {
                                    dataModel.users[index].isMentor = true
                                }
                                showNextPage = true;
                            }
                            .frame(width: 115, height: 43)
                            .background(.purple1)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .opacity(0.8)
                            Button("Mentee") {
                                showNextPage = true;
                            }
                            .frame(width: 115, height: 43)
                            .background(.pinkText1)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .opacity(0.8)
                        }
                        .padding(.horizontal, 4)
                        .navigationDestination(isPresented: $showNextPage) {
                            BioView(userEmail: userEmail)
                                .navigationBarBackButtonHidden(true)
                        }
                    }
                }
            }
        }
        
    }
}

struct MMblobsBackground: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image("blob6")
                }
                Spacer()
            }
            .ignoresSafeArea()
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("blob7")
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct MentorMenteeView_Previews: PreviewProvider {
    static var previews: some View {
        MentorMenteeView(userEmail: "")
    }
}
