//
//  ViewController.swift
//  potluck3
//
//  Created by Fei Yao Li on 10/18/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON

class ViewController: UIViewController {

    var ref = Firebase(url: "https://sizzling-inferno-2998.firebaseio.com/")
    @IBOutlet weak var osn: UILabel!
    @IBOutlet weak var Op: UILabel!
    @IBOutlet weak var Date: UILabel!
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var max: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let uu = "https://sizzling-inferno-2998.firebaseio.com/potluck/data/posts"
        let ref2 = Firebase(url: uu)
        //func post(ref: Firebase, title: String, location: String, date: String, time: Int, max: Int, details: String)
        //ser.post(ref2, title: "st", location: "this", date: "stuff", time: 2, max: 3, details: "mk")
        ref2.observeEventType(.Value, withBlock: { snapshot in
            print(snapshot.value)
            let json = JSON(snapshot.value)
            print(json)
            let list = PostList(json: json)
            let pls = list.get("st", datem: "location")
            print(pls)
            }, withCancelBlock: { error in
                print(error.description)
        })
        

        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

