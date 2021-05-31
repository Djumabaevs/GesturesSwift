//
//  ViewController.swift
//  GesturesSwift
//
//  Created by Bakyt Dzhumabaev on 31/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    var isFerrari = true
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        myImage.addGestureRecognizer(gestureRecognizer)
        
        counter = 10
        timerLabel.text = "Timer: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
      
    }
    
    @objc func timerFunction() {
        timerLabel.text = "Timer: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Time's over!"
        }
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        counter = 10
//        for time in 1...10 {
//            counter -= counter
//            timerLabel.text = "Time:  \(counter)"
//            Thread.sleep(forTimeInterval: 1)
//        }
//    }
    
    @objc func changePic() {
      
        if isFerrari == true {
            myImage.image = UIImage(named: "bugatti")
            myLabel.text = "Bugatti Veyron"
            isFerrari = false
        } else {
            myImage.image = UIImage(named: "ferrari")
            myLabel.text = "Ferrari"
            isFerrari = true
        }
        
        
    }

    @IBAction func buttonStart(_ sender: Any) {
        
    }
    
}

