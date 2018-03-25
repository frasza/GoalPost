//
//  GoalCell.swift
//  GoalPost
//
//  Created by Žan Fras on 25/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    //MARK: - Methods
    /***************************************************************/
    func configureCell(goal: Goal) {
        goalDescriptionLabel.text = goal.goalDescription
        goalTypeLabel.text = goal.goalType
        goalProgressLabel.text = String(goal.goalProgress)
    }

}
