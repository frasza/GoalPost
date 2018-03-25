//
//  GoalsViewController.swift
//  GoalPost
//
//  Created by Žan Fras on 25/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit
import CoreData

class GoalsViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.isHidden = false
    }
    
    //MARK: - Actions
    /***************************************************************/
    @IBAction func addGoalButtonPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalViewController") else { return }
        
        presentDetail(createGoalVC)
    }

}

//MARK: - TableView Methods
/***************************************************************/
extension GoalsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell else { return UITableViewCell() }
        
        cell.configureCell(description: "Eat salad twice a week", type: .shortTerm, goalProgress: 2)
        
        return cell
    }
    
}
