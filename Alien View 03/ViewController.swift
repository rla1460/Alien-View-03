//
//  ViewController.swift
//  Alien View 03
//
//  Created by D7703_07 on 2018. 4. 3..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1; // 이미지 초기 인덱스 값
    var direction = true; // direction이 true이면 증가, false이면 감소 구분
    @IBOutlet weak var AlienImageView: UIImageView!
    @IBOutlet weak var label: UILabel! // 이미지 인덱스 출역
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지를 로드함
        AlienImageView.image = UIImage(named: "frame1.png")
        label.text = "1"
    }
    
    
    @IBAction func Update(_ sender: Any) {
        //count가 5이면 감소시키기 위해 direction을 false로 변경
        //count가 1이면 증가시키기 위해 direction을 true로 변경
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        
        //direction이 1이면 count를 1씩 증가,
        //direction이 0이면 count를 1씩 감소
        if direction == true {
            count += 1;
        } else if direction == false {
            count = count - 1
        }
        
        // 이미지 변경
        AlienImageView.image = UIImage(named: "frame\(count).png")
        label.text = String(count)
    }
    
}

