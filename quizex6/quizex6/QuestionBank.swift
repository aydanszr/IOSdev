//
//  QuestionBank.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "what is my real second-name?", choice1: "Jenisqyzy", choice2: "Seitzhanova", choice3: "Rakhimberlina", answer: 3))
        list.append(Question(questionText: "what is my favourite band?", choice1: "THE1975", choice2: "MUSE", choice3: "BTS", answer: 1))
        list.append(Question(questionText: "what is my biggest phobia?", choice1: "aerophobia", choice2: "social phobia", choice3: "arachnophobia", answer: 3))
        list.append(Question(questionText: "what is one place in the world would I most like to visit", choice1: "France", choice2: "China", choice3: "Antarctica", answer: 3))
        list.append(Question(questionText: "if I got a tattoo, what would it be?", choice1: "butterfly", choice2: "troye sivan", choice3: "aydan", answer: 2))
        list.append(Question(questionText: "what is one thing I cannot live without?", choice1: "pillow", choice2: "phone", choice3: "earpods", answer: 1))
        list.append(Question(questionText: "which type of movie do I like best", choice1: "horrow", choice2: "comedy", choice3: "action", answer: 1))
        list.append(Question(questionText: "do I eat anything weird?", choice1: "tomato with sugar", choice2: "milkshake with fries", choice3: "pizza with fruits", answer: 2))
        list.append(Question(questionText: "what is my favorite color?", choice1: "red", choice2: "black", choice3: "orange", answer: 3))
        list.append(Question(questionText: "what is my phone number", choice1: "87774105422", choice2: "87778341663", choice3: "87712158762", answer: 2))
        
    }
}
