//
//  Questions.swift
//  Quizzler
//
//  Created by Hanna Putiprawan on 1/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let questionText: String
    var answer: String
    
    init(q: String, a: String) {
        questionText = q
        answer = a
    }
}
