//
//  Player.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import Foundation

class Player {
    var username: String = ""
    var score: Int = 0
    
    init(username: String, score: Int){
        self.username = username
        self.score = score
}
}
