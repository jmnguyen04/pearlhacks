//
//  OpeningScreenView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct OpeningScreenView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    backgroundView()
                    VStack {
                        //Mentor Match.
                        Spacer()
                        HStack {
                            VStack(alignment: .leading, content: {
                                Text("MENTOR")
                                    .foregroundStyle(.pinkText1)
                                    .font(.system(size: 55))
                                HStack {
                                    Text("MATCH")
                                        .foregroundStyle(.pinkText1)
                                        .font(.system(size: 55))
                                    Text(".")
                                        .foregroundStyle(.purple1)
                                        .font(.system(size: 55))
                                }
                            })
                            .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal, geometry.size.width * 0.1)
                        //Middle Text
                        Spacer()
                        Group {
                            Text("FIND A ").foregroundStyle(.pinkText1) + Text("GUIDE").foregroundStyle(.purple1)
                            Text("FOR ALL YOUR").foregroundStyle(.pinkText1)
                            Text("PROFESSIONAL").foregroundStyle(.purple1)
                            Text("GOALS!").foregroundStyle(.purple1)
                        }
                        .fontWeight(.bold)
                        .font(.system(size: 35))
                        
                        Spacer()
                        
                        NavigationStack {
                            NavigationLink("SIGN UP") {
                                SignUpView()
                            }
                            .frame(width: 200, height: 50)
                            .background(.pinkText1)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .fontWeight(.semibold)
                            .font(.system(size: 24))
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            
                            NavigationLink("LOG IN") {
                                LogInView()
                            }
                            .frame(width: 200, height: 50)
                            .background(.purple1)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .fontWeight(.semibold)
                            .font(.system(size: 24))
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                        Spacer()
                    }
                }
            }
        }
    }
}

struct backgroundView: View {
    var body: some View {
        ZStack {
            Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
            )
            VStack {
                HStack {
                    Spacer()
                    Image("blob1")
                }
                Spacer()
            }
            .ignoresSafeArea()
            Image("blob2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFit()
                .containerRelativeFrame(.horizontal) { size, axis in
                    size
                }
            VStack {
                Spacer()
                HStack {
                    Image("blob3")
                    Spacer()
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct OpeningScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningScreenView()
    }
}
