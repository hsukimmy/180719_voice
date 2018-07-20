//
//  ViewController.swift
//  180719_voice
//
//  Created by Ｃloud_Bai on 2018/7/19.
//  Copyright © 2018年 Kimmy Hsu. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var typeTextfield: UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string:typeTextfield.text! )
        speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

