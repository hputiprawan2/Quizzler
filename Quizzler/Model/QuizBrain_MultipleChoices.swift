//
//  QuizBrain_MultipleChoices.swift
//  Quizzler
//
//  Created by Hanna Putiprawan on 1/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain_MultipleChoices {
    let quizes = [
        Question_MultipleChoices(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question_MultipleChoices(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question_MultipleChoices(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question_MultipleChoices(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question_MultipleChoices(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question_MultipleChoices(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question_MultipleChoices(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question_MultipleChoices(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question_MultipleChoices(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question_MultipleChoices(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizes[questionNumber].answer {
            addScore()
            return true
        }
        return false
    }
    
    func getQuestionText() -> String {
        return quizes[questionNumber].questionText
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quizes.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            resetScore()
        }
    }
    
    func getOptions() -> [String] {
        return quizes[questionNumber].options
    }
    
    func getProgress() -> Float {
        // questionNumber + 1 to tell the progress from the start
        return Float(questionNumber + 1) / Float(quizes.count)
    }
    
    mutating func addScore() {
        score += 1
    }
    
    mutating func resetScore() {
        score = 0
    }
    
    func getScore() -> Int {
        return score
    }
}
