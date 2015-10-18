//
//  PostList.swift
//  Potluck
//
//  Created by Fei Yao Li on 10/17/15.
//  Copyright (c) 2015 Fei Yao Li. All rights reserved.
//

import Foundation
import SwiftyJSON

class PostList {
    
    var list: JSON
    
    init(json: JSON) {
        list = json
    }
    
    func get(title: String, datem: String) -> (String) {
        let data = list[title][datem].string
        return data!
    }
}