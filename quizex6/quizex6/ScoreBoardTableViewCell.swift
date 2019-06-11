//
//  ScoreBoardTableViewCell.swift
//  quizex6
//
//  Created by Aydan on 6/9/19.
//  Copyright © 2019 Aydan. All rights reserved.
//

import UIKit

class ScoreBoardTableViewCell: UITableViewCell {
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setScoreBoardCell(username: String, score: String) {
        scoreLabel.text = score
        usernameLabel.text = username
    }

}
