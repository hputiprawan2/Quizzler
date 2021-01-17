//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = "Four + Two is equal to Six"
    }

    @IBAction func trueButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func falseButtonPressed(_ sender: UIButton) {
    }
}
