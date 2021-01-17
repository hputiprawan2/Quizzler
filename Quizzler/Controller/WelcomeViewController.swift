//
//  welcomeViewController.swift
//  Quizzler
//
//  Created by Hanna Putiprawan on 1/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var TFButton: UIButton!
    @IBOutlet weak var MCButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func TFButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "TFPage", sender: self)
    }
    
    @IBAction func MCButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MCPage", sender: self)
    }
}
