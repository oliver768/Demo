//
//  ViewController.swift
//  Demo
//
//  Created by Ravindra Sonkar on 21/02/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "This i")
    
    @IBOutlet weak var textField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func audioBtn(_ sender: Any) {
        myUtterance = AVSpeechUtterance(string: textField.text)
        myUtterance.rate = 0.4
        synth.speak(myUtterance)
    }
}

