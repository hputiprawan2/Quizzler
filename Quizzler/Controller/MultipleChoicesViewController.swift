//
//  MultipleChoicesViewController.swift
//  Quizzler
//
//  Created by Hanna Putiprawan on 1/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class MultipleChoicesViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    var quizBrain = QuizBrain_MultipleChoices()
    
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
        choice1Button.setTitle(quizBrain.getOptions()[0], for: .normal)
        choice2Button.setTitle(quizBrain.getOptions()[1], for: .normal)
        choice3Button.setTitle(quizBrain.getOptions()[2], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
    }
}

