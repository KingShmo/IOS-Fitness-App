//
//  DietViewController.swift
//  Fitness App
//
//  Created by user209732 on 4/10/22.
//

import UIKit

class DietViewController: UIViewController {

    @IBOutlet weak var MaxCalorieLabel: UILabel!
    
    @IBOutlet weak var CurrentCalorieLabel: UILabel!
    
    @IBOutlet weak var BreakfastFoodTextField: UITextField!
    
    @IBOutlet weak var BreakfastCalorieTextField: UITextField!
    
    @IBOutlet weak var LunchFoodTextField: UITextField!
    
    @IBOutlet weak var LunchCalorieTextField: UITextField!
    
    @IBOutlet weak var DinnerFoodTextField: UITextField!
    
    @IBOutlet weak var DinnerCalorieTextField: UITextField!
    
    @IBOutlet weak var MaxCaloriesTextField: UITextField!
    
    var totalCalories = 0;
    var maxCalories = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://api.edamam.com/api/food-database/v2/parser")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             // This will run when the network request returns
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
                    let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]


             }
        }
        task.resume()
    }
    
    @IBAction func onBreakfastCalorie(_ sender: Any) {
        let breakfastCalorie: Int? = Int(BreakfastCalorieTextField.text!)
        totalCalories += breakfastCalorie!
        let totalCaloriesString = String(totalCalories)
        CurrentCalorieLabel.text = totalCaloriesString
        
    }
    
    @IBAction func onLunchCalorie(_ sender: Any) {
        let lunchCalorie: Int? = Int(LunchCalorieTextField.text!)
        totalCalories += lunchCalorie!
        let totalCaloriesString = String(totalCalories)
        CurrentCalorieLabel.text = totalCaloriesString
    }
    
    @IBAction func onDinnerCalorie(_ sender: Any) {
        let dinnerCalorie: Int? = Int(DinnerCalorieTextField.text!)
        totalCalories += dinnerCalorie!
        let totalCaloriesString = String(totalCalories)
        CurrentCalorieLabel.text = totalCaloriesString
    }
    
    @IBAction func onSetMaxCalories(_ sender: Any) {
        let maxCal: Int? = Int(MaxCaloriesTextField.text!)
        maxCalories = maxCal!
        let maxCaloriesString = String(maxCalories)
        MaxCalorieLabel.text = maxCaloriesString
        
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
