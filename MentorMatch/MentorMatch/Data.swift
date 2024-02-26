//
//  Data.swift
//  MentorMatch
//
//  Created by Sarah Haddix on 2/24/24.
//

import Foundation
import SwiftUI

//This and associated code borrowed from Paul at HackingWithSwift.com
class Users: ObservableObject{
    static let shared = Users()
    
    @Published var users = [User]()
    
    private init() {}
}


//add: profile picture
//add: optional values for stuff that's not required
struct User: Hashable {
    let name: String
    var isMentor: Bool
    //unique
    let email: String
    let password: String
    var bio: String
    
    var isMentorStringRep: String {
        if(isMentor){
            return "Mentor"
        }
        return "Mentee"
    }
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.isMentor = false
        self.email = email
        self.password = password
        self.bio = "Empty Bio"
    }
    
    
}
