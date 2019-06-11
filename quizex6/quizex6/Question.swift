//
//  Question.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import Foundation


class Question{
    let question: String
    let option1: String
    let option2: String
    let option3: String
    
    let correctAnswer: Int
    
    init(questionText: String, choice1: String, choice2: String, choice3: String, answer: Int){
        question = questionText
        option1 = choice1
        option2 = choice2
        option3 = choice3
        correctAnswer = answer
    }
}
