//
//  CreateGoalViewController.swift
//  GoalPost
//
//  Created by Žan Fras on 25/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class CreateGoalViewController: UIViewController, UITextViewDelegate {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    //MARK: - Properties
    /***************************************************************/
    var goalType: GoalType = .shortTerm
    
    //MARK: - Methods
    /***************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func nextButtonPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalViewController") as? FinishGoalViewController else { return }
            finishGoalVC.initData(description: goalTextView.text, type: goalType)
            
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func shortTermButtonPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTermButtonPressed(_ sender: Any) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedColor()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
