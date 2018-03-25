//
//  CreateGoalViewController.swift
//  GoalPost
//
//  Created by Žan Fras on 25/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class CreateGoalViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var goalTextField: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func nextButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
