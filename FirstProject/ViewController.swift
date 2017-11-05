//
//  ViewController.swift
//  FirstProject
//
//  Created by Florian Zimmermann on 30.10.17.
//  Copyright © 2017 Florian Zimmermann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var ResetNumber: UIButton!
    @IBOutlet weak var ClickMe: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var RandomNumber: UILabel!
    var number = 0;

    @IBAction func saySomething(_ sender: Any) {
        let random = arc4random_uniform(10)
        RandomNumber.text = "\(random)"
        number = number + Int(random)
        
        Label.text = "\(number)"
    }
    
    @IBAction func resetNumbers(_ sender: Any) {
        number = 0;
        RandomNumber.text = "0"
        Label.text = "0"
    }
}

