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
    func configureCell(description: String, type: String, goalProgress: Int) {
        goalDescriptionLabel.text = description
        goalTypeLabel.text = type
        goalProgressLabel.text = String(goalProgress)
    }

}
