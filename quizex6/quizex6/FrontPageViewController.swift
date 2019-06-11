//
//  FrontPageViewController.swift
//  quizex6
//
//  Created by Aydan on 6/10/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import UIKit

class FrontPageViewController: UIViewController {
    

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    static var player = Player(username: "None", score: 0)

    
    @IBAction func PressToStart(_ sender: Any) {
        if usernameField.text !=  "" {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewViewController") as! QuizViewViewController
            self.present(controller, animated: true)
            FrontPageViewController.player.username = usernameField.text!
        }
        else {
            let alert = UIAlertController(title: "error", message: "fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
