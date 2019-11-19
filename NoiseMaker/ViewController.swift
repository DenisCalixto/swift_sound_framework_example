//
//  ViewController.swift
//  NoiseMaker
//
//  Created by Denis Calixto on 11/18/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var noiseMaker = NoiseMaker()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playApplause(_ sender: Any) {
        noiseMaker.playApplause()
    }
    
    @IBAction func playBubbles(_ sender: Any) {
        noiseMaker.playBubbles()
    }
    
    @IBAction func playGuitar(_ sender: Any) {
        noiseMaker.playGuitar()
    }
    
    @IBAction func playMonster(_ sender: Any) {
        noiseMaker.playMonster()
    }
}

