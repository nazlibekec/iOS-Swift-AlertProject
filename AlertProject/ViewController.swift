//
//  ViewController.swift
//  AlertProject
//
//  Created by Nazlı on 13.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userSignUpLabel: UILabel!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var passwordAgainTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameTextfield.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found!")
            
        } else if passwordTextfield.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found!")
            
        } else if passwordTextfield.text != passwordAgainTextfield.text {
            makeAlert(titleInput: "Error!", messageInput: "Passwords do not match!")
                            
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
                    
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
    
}
