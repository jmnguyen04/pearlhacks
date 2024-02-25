//
//  BioView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/25/24.
//

import SwiftUI

struct BioView: View {
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
    
    
    @State private var userInput: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                BioBlobsBackground()
                Image("rectangle1")
                VStack {
                    HStack {
                        Text("About me:")
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                            .padding(.horizontal, 80)
                        Spacer()
                    }
                    TextField("Bio", text: $userInput)
                        .padding(.horizontal, 80)
                        .font(.system(size: 20))
                    Button("Create Profile") {
                        //UPDATEBIO
                        dataModel.users[index].bio = userInput
                        //GOTONEXTPAGE
                        showNextPage = true
                    }
                    .frame(width: 200, height: 43)
                    .background(.purple1)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .opacity(0.8)
                    .padding(.top, 140)
                    .navigationDestination(isPresented: $showNextPage) {
                        HomebaseView(userEmail: userEmail)
                            .navigationBarBackButtonHidden(true)
                    }
                    
                }
            }
        }
    }
}

struct BioBlobsBackground: View {
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

struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView(userEmail: "TEST")
    }
}

