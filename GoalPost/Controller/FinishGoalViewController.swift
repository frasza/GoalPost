//
//  FinishGoalViewController.swift
//  GoalPost
//
//  Created by Žan Fras on 25/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class FinishGoalViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    //MARK: - Properties
    /***************************************************************/
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGoalButton.bindToKeyboard()
    }
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func createGoalButtonPressed(_ sender: Any) {
        
    }
    
}
