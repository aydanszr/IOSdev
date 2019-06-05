//
//  OptionViewController.swift
//  QuizEx2
//
//  Created by Aydan on 6/5/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController {
    
    let questions = ["what is Troye's FULL name?", "Troye has a collaboration with all of the following artists except:", "Troye covered which song for his Spotify Singles session?", "on Troye's last 2016 tour which of the following were not an opening act?", "who is Troye's boyfriend?", "Troye was awarded in the 2017 GLAAD awards for which award?", "What is the dog's name?", "in which movie did Troye NOT appear in?", "Troye was invited as a special guest in which artist's arena show?", "his first single 'My Happy Little Pill' was inspired by whom?"]
    let answers = [["Troye Sivan Mellet","Troye Libertsone", "Troye Sivan", "Troye"], ["Lana Del Ray", "Jónsi", "Martin Garrix", "Ariana Grande"], ["Better Now by Post Malone","Growing Pains by Alessia Cara", "Somebody else by THE1975", "Video Games by Lana Del Ray"], ["Allie X", "Astrid S", "Jaymes TW", "Dua Lipa"], ["Jacob Bixenman", "Manu Rios", "Harry Styles", "Connon Franta"], ["Stephen F. Kolzak award","The Good Gay award", "Christoff K. Balsar award", "Gillbert Baker award"], ["Nash", "Dabbs", "Batman", "Tibby Dee"], ["Lady Bird", "Boy Erased", "X-Men Origins", "Spud: Learning to Fly"], ["Taylor Swift", "Ariana Grande", "Halsey", "Miley Cyrus"], ["his mum", "his best friend", "himself", "his boyfriend"]]
    
    var currentQuestion = 0
    var rightAnswer:UInt32 = 0
    var points = 0

    @IBOutlet weak var questionLabel: UILabel!
    @IBAction func actionbtn(_ sender: AnyObject) {
        if (sender.tag == Int(rightAnswer)){
            print("YOU ARE RIGHT!")
            points += 1
        }
        else {
            print("YOU ARE WRONG(")
        }
        
        if (currentQuestion != questions.count){
            newQuestion()
        }
        else {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    func newQuestion(){
        questionLabel.text = questions[currentQuestion]
        rightAnswer = arc4random_uniform(4)+1
        
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...4{
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswer)){
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 3
            }
            }
        currentQuestion += 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   

}
