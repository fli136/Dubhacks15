//
//  Post.swift
//  Potluck
//
//  Created by Fei Yao Li on 10/17/15.
//  Copyright (c) 2015 Fei Yao Li. All rights reserved.
//

import Foundation

class Post {
    
    var op: User
    var title: String = "Untitled"
    var location: String = "N/A"
    var date: String = "TBD"
    var time: Int = 0
    var max: Int = 0
    var details: String = ""
    var friends: Array<User> = [User]()
    var comments: Array<Comment> = [Comment]()
    
    init(op: User, title: String, location: String, date: String, time: Int, max: Int, details: String) {
        self.op = op
        self.title = title
        self.location = location
        self.date = date
        self.time = time
        self.max = max
        self.details = details
        friends.append(op)
    }
    
    func reserve(user1: User) {
        friends.append(user1)
    }
    
    func currentPeople() -> Int {
        return friends.count
    }
    
}