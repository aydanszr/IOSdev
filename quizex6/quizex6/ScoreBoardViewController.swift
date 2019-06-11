//
//  ScoreBoardViewController.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var usernamelbl: UILabel!
    @IBOutlet weak var scorelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuizViewViewController.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
        cell.setScoreBoardCell(username: FrontPageViewController.player.username, score: String(FrontPageViewController.player.score))
        return cell
    }
    
    
    @IBAction func restartButtonAction(_ sender: Any) {
        
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
        
        QuizViewViewController.incScore = 0
        QuizViewViewController.score = 0
        QuizViewViewController.questionNumber = 0
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewViewController") as! QuizViewViewController
        self.present(controller, animated: true)
        
    }
    

}
