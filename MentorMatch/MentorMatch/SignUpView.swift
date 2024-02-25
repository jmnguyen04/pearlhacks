//
//  SignUpView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var checkPassword: String = ""
    
    @State private var showNextPage = false
    
    @ObservedObject var dataModel = Users.shared
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                VStack {
                    Text("Welcome!")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 36))
                        .foregroundStyle(.purple1)
                        .padding(.top, 40)
                        .padding(.bottom, 20)
                Form {
                    Section(header: Text("First Name").foregroundStyle(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 15))) {
                        TextField("", text: $firstName)
                            .background(.pinkBackground2)
                    }
                    .listRowBackground(Color(.pinkBackground2))
                    
                    Section(header: Text("Email").foregroundStyle(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 15))) {
                        TextField("", text: $email)
                            .background(.pinkBackground2)
                    }
                    .listRowBackground(Color(.pinkBackground2))
                    
                    Section(header: Text("Password").foregroundStyle(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 15))) {
                        TextField("", text: $password)
                            .background(.pinkBackground2)
                    }
                    .listRowBackground(Color(.pinkBackground2))
                    
                    Section(header: Text("Confirm Password").foregroundStyle(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 15))) {
                        TextField("", text: $checkPassword)
                            .background(.pinkBackground2)
                    }
                    .listRowBackground(Color(.pinkBackground2))
                        
                    Section {
                        Button(action: handleSubmit) {
                            HStack {
                                Text("Sign Up")
                                    .foregroundColor(.purple1)
                                    .frame(maxWidth: .infinity)
                                    .fontWeight(.bold)
                                    .font(.system(size: 24))
                            }
                        }
                        .frame(height: 57)
                        .background(.pinkBackground2)
                        .cornerRadius(14)
                        .padding(.top, 20)
                    }
                    .listRowBackground(Color(.pinkBackgroud1))
                    .navigationDestination(isPresented: $showNextPage) {
                        MentorMenteeView(userEmail: email)
                            .navigationBarBackButtonHidden(true)
                    }
                }
                .background(.pinkBackgroud1)
                .scrollContentBackground(.hidden)
                }
                }
        }
    }
    
    private func handleSubmit() {
        if(firstName != "" && email != "" && password != "" && password == checkPassword) {
            let newUser = User(name: firstName, email: email, password: password)
            dataModel.users.append(newUser)
        }
        showNextPage = true;
    }
    
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
