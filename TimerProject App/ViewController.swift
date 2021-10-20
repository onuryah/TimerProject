//
//  ViewController.swift
//  TimerProject App
//
//  Created by Ceren Çapar on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction() {
        timeLabel.text = "\(counter)"
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Time is over"
        }
            counter -= 1
        
        
        
    }

    @IBAction func bottonClicked(_ sender: Any) {
    
    }
}

