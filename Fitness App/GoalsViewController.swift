//
//  GoalsViewController.swift
//  Fitness App
//
//  Created by user209732 on 4/10/22.
//

import UIKit

class GoalsViewController: UIViewController {

    @IBOutlet weak var CurrentWeightLabel: UILabel!
    
    @IBOutlet weak var WeekWeightLabel: UILabel!
    
    @IBOutlet weak var MonthWeightLabel: UILabel!
    
    @IBOutlet weak var EndWeightLabel: UILabel!
    
    @IBOutlet weak var UpdateGoalTextField: UITextField!
    
    @IBOutlet weak var UpdateWeightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onUpdateWeight(_ sender: Any) {
        CurrentWeightLabel.text = "197 lbs"
        WeekWeightLabel.text = "195 lbs"
        MonthWeightLabel.text = "186 lbs"
        EndWeightLabel.text = "175 lbs"
    }
    
    @IBAction func onUpdateGoal(_ sender: Any) {
        CurrentWeightLabel.text = "197 lbs"
        WeekWeightLabel.text = "195 lbs"
        MonthWeightLabel.text = "182.5 lbs"
        EndWeightLabel.text = "170 lbs"
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
