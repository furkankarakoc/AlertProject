//
//  ViewController.swift
//  AlertProject
//
//  Created by Furkan Karakoc on 14.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        if userNameText.text == "" {
            makeAlert(titleInput: "Alert", messageInput: "Username not found")
        } else if passwordText.text == "" || passwordAgainText.text == "" {
            makeAlert(titleInput: "Alert", messageInput: "Password not found")
        } else if passwordText.text != passwordAgainText.text {
            makeAlert(titleInput: "Opps!", messageInput:"Passwords are not the same")
        } else {
            makeAlert(titleInput: "Success", messageInput: "Let's Sign")
        }
    }
    
    func makeAlert (titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
