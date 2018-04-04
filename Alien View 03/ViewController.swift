//
//  ViewController.swift
//  Alien View 
//
//  Created by D7703_07 on 2018. 4. 3..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var direction = true;
    @IBOutlet weak var AlienImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AlienImageView.image = UIImage(named: "frame1.png")
        label.text = "1"
    }
    
    
    @IBAction func Update(_ sender: Any) {
        
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        
        
        if direction == true {
            count += 1;
        } else if direction == false {
            count = count - 1
        }
        
       
        AlienImageView.image = UIImage(named: "frame\(count).png")
        label.text = String(count)
    }
    
}

