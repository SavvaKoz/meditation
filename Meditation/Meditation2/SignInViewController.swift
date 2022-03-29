//
//  ViewController.swift
//  Meditation2
//
//  Created by Student on 16.03.2022.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInViewController: UIViewController {

    @IBOutlet weak var 🤮: UITextField!
    @IBOutlet weak var inpitPassword: UITextField!
    
    @IBAction func signInAction(_ sender: UIButton) {
        
        guard inpitPassword.text?.isEmpty == false && inpitPassword.text?.isEmpty == false else {return showAlert(message: "Поля пустые")}
        guard isValidEmail(emailId: 🤮.text!) else {return showAlert(message: "Проверьте парвильность почты")}
        
        let url = "http://mskko2021.mad.hakta.pro/api/user/login?email=%5C(inputLogin.text!)&password=%5C(inputPassword.text!)"
        let param: [String: String] = [
            "email": 🤮.text!,
            "password": inpitPassword.text!
        ]
        
        
    }
    
    
    
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Уведомление", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Уведомление", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func isValidEmail(emailId: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailId)
    }
    
}

