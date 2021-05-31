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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        myImage.addGestureRecognizer(gestureRecognizer)
    }
    
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

