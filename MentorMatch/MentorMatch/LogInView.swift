//
//  LogInView.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.pinkBackgroud1.edgesIgnoringSafeArea(.all
                )
                Text("Login View")
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
