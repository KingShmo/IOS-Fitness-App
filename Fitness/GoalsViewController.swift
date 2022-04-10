//
//  GoalsViewController.swift
//  Fitness App
//
//  Created by user209732 on 4/10/22.
//

import UIKit

class GoalsViewController: UIViewController {

    @IBOutlet weak var CurrentWeightLabel: UILabel!
    @IBOutlet weak var FinalWeightLabel: UILabel!
    @IBOutlet weak var WeekWeightLabel: UILabel!
    @IBOutlet weak var MonthWeightLabel: UILabel!
    @IBOutlet weak var UpdateWeightTextField: UITextField!
    @IBOutlet weak var UpdateGoalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onUpdateWeight(_ sender: Any) {
    }
    
    @IBAction func onUpdateGoal(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
