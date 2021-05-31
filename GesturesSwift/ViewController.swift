//
//  ViewController.swift
//  GesturesSwift
//
//  Created by Bakyt Dzhumabaev on 31/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
    }
    
    @objc func changePic() {
        
    }


}

