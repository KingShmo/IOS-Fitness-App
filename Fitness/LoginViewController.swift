//
//  LoginViewController.swift
//  Fitness
//
//  Created by EwwwDaFakeAccount on 4/3/22.
//

import UIKit
import ParseSwift

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        struct User: ParseUser {
            //: These are required by `ParseObject`.
            var objectId: String?
            var createdAt: Date?
            var updatedAt: Date?
            var ACL: ParseACL?
            var originalData: Data?

            //: These are required by `ParseUser`.
            var username: String?
            var email: String?
            var emailVerified: Bool?
            var password: String?
            var authData: [String: [String: String]?]?

            //: Your custom keys.
            var customKey: String?

            //: Implement your own version of merge
            func merge(with object: Self) throws -> Self {
                var updated = try mergeParse(with: object)
                if updated.shouldRestoreKey(\.customKey,
                                             original: object) {
                    updated.customKey = object.customKey
                }
                return updated
            }
        }
        User.signup(username: usernameField.text!, password: passwordField.text!) { results in

            switch results {
            case .success(let user):
                self.performSegue(withIdentifier: "loginSegue", sender: nil)

                guard let currentUser = User.current else {
                    assertionFailure("Error: current user currently not stored locally")
                    return
                }

                if !currentUser.hasSameObjectId(as: user) {
                    assertionFailure("Error: these two objects should match")
                } else {
                    print("Successfully signed up user \(user)")
                }

            case .failure(let error):
                assertionFailure("Error signing up \(error)")
            }
        }
        
        
    }
    
    @IBAction func onSignIn(_ sender: Any) {

        
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
