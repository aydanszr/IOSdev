//
//  QuizViewViewController.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import UIKit

class QuizViewViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var questionCountLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var incorrectCount: UILabel!
    
    let allQuestions = QuestionBank()
    static var questionNumber: Int = 0
    static var score: Int = 0
    static var incScore: Int = 0
    var selectedAnswer: Int = 0
    
    static var players = [Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        updateQuestion()
    }
    

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            
            QuizViewViewController.score += 1
            sender.backgroundColor = .green
            
        }else{
            sender.backgroundColor = .red
            
            QuizViewViewController.incScore += 1
            
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(corAnswer), userInfo: nil, repeats: false)
            
        }
        
        button1.isUserInteractionEnabled = false
        button2.isUserInteractionEnabled = false
        button3.isUserInteractionEnabled = false
        
        
        
        QuizViewViewController.questionNumber += 1
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func corAnswer(){
        if button1.tag == selectedAnswer{
            button1.backgroundColor = .green
        }
        else if button2.tag == selectedAnswer{
            button2.backgroundColor = .green
        }
        else if button3.tag == selectedAnswer{
            button3.backgroundColor = .green
        }
    }
    
    @objc func updateQuestion(){
        
        if QuizViewViewController.questionNumber <= allQuestions.list.count - 1 {
            
            updateUI()
            questionLabel.text = allQuestions.list[QuizViewViewController.questionNumber].question
            
            button1.setTitle(allQuestions.list[QuizViewViewController.questionNumber].option1, for: UIControl.State.normal)
            button2.setTitle(allQuestions.list[QuizViewViewController.questionNumber].option2, for: UIControl.State.normal)
            button3.setTitle(allQuestions.list[QuizViewViewController.questionNumber].option3, for: UIControl.State.normal)
            
            
            updateState(button: button1)
            updateState(button: button2)
            updateState(button: button3)
            
            selectedAnswer = allQuestions.list[QuizViewViewController.questionNumber].correctAnswer
            
            
        }else {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
            self.present(controller, animated: true)
            
            FrontPageViewController.player.score = QuizViewViewController.score
            QuizViewViewController.players.append(FrontPageViewController.player)
            
        }
        
    }
    
    func updateUI(){
        countLabel.text = "Score: \(QuizViewViewController.score)"
        incorrectCount.text = "\(QuizViewViewController.incScore) / \(allQuestions.list.count)"
        questionCountLabel.text = "\(QuizViewViewController.questionNumber + 1) / \(allQuestions.list.count)"
    }
    
    func restartQuiz(){
        QuizViewViewController.incScore = 0
        QuizViewViewController.score = 0
        QuizViewViewController.questionNumber = 0
        updateQuestion()
    }
    
    func updateState(button: UIButton) {
        button.backgroundColor = UIColor.white
        button.isUserInteractionEnabled = true
    }
    
}
