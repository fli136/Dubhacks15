//
//  Comment.swift
//  Potluck
//
//  Created by Fei Yao Li on 10/17/15.
//  Copyright (c) 2015 Fei Yao Li. All rights reserved.
//

import Foundation

class Comment {
    
    var op: User
    var message: String = ""
    
    init(op: User, message: String) {
        self.op = op
        self.message = message
    }
    
}