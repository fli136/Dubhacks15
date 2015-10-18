//
//  User.swift
//  Potluck
//
//  Created by Fei Yao Li on 10/17/15.
//  Copyright (c) 2015 Fei Yao Li. All rights reserved.
//

import Foundation
import Firebase

class User {
    
    var name: String = "No Name"
    var email: String = "None"
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    //pls use pathing to comments of post
    func comment(ref: Firebase, text: String) {
        let comments = name + ": " + text
        ref.childByAutoId().setValue(comments)
    }
    
    //pls use pathing to list of posts
    func post(ref: Firebase, title: String, location: String, date: String, time: Int, max: Int, details: String) {
        let post = ["op": name, "location": location, "date": date, "time": time, "max": max, "details": details]
        ref.updateChildValues([title: post])
    }
    
    func reserve(ref: Firebase) {
        
    }
}