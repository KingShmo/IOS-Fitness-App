//
//  GoalsViewController.swift
//  Fitness App
//
//  Created by user209732 on 4/10/22.
//

import UIKit

class GoalsViewController: UIViewController {

    @IBOutlet weak var CurrentWeightLabel: UILabel!
    
    @IBOutlet weak var EndWeightLabel: UILabel!
    
    @IBOutlet weak var UpdateGoalTextField: UITextField!
    
    @IBOutlet weak var UpdateWeightTextField: UITextField!
    
    var currentWeight = 0;
    var endGoal = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onUpdateWeight(_ sender: Any) {
        currentWeight = Int(UpdateWeightTextField.text!)!
        let weightText = String(currentWeight)
        CurrentWeightLabel.text = weightText + " lbs"

    }
    
    @IBAction func onUpdateGoal(_ sender: Any) {
        endGoal = Int(UpdateGoalTextField.text!)!
        let goalText = String(endGoal)
        EndWeightLabel.text = goalText + " lbs"
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
