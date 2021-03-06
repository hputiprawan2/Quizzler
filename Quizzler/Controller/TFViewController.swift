//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class TFViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
        
    var quizBrain = QuizBrain_TF()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.layer.cornerRadius = 20.0
            sender.backgroundColor = #colorLiteral(red: 0.5749066472, green: 1, blue: 0.6689294577, alpha: 1)
        } else {
            sender.layer.cornerRadius = 20.0
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.672976315, blue: 0.8629492521, alpha: 1)
        }
        
        quizBrain.nextQuestion()
        
        // Show button color for 0.2 seconds after click the answer button
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc private func updateUI() {
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

