//
//  LoginViewController.swift
//  Fitness App
//
//  Created by Ryan Sevidal on 4/4/22.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = loginField.text!
        let password = passwordField.text!
        
        Firebase.Auth.auth().signIn(withEmail: username, password: password) {
            result, error in
            if error != nil {
                print(error?.localizedDescription)
            }
            
            guard let res = result else {
                print("Error!")
                return
            }
            
            print("Signed in as \(res.user.email)")
            self.performSegue(withIdentifier: "LoginSegue", sender: nil)
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let username = loginField.text!
        let password = passwordField.text!
        
        Firebase.Auth.auth().createUser(withEmail: username, password: password) {
            result, error in
            if error != nil {
                print(error?.localizedDescription)
            }
            
            guard let res = result else {
                print("Error!")
                return
            }
            
            print("Signed in as \(res.user.email)")
            self.performSegue(withIdentifier: "LoginSegue", sender: nil)
        
        }
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
