//
//  LoginVC.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 12/28/20.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var LoginBtn: UIButton!
    
    @IBOutlet weak var FBBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Style buttons
        title = "Login"
        FBBtn.layer.cornerRadius = FBBtn.frame.height/2
        FBBtn.clipsToBounds = true
        
        LoginBtn.layer.cornerRadius = LoginBtn.frame.size.height / 2
        LoginBtn.clipsToBounds = true
        LoginBtn.backgroundColor = .clear
        LoginBtn.layer.borderWidth = 3
        LoginBtn.layer.borderColor = CGColor.init(red: 0.84, green: 0.84, blue: 0.84, alpha:1)
        //Textfiied
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
       
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
     
     return true
    }

    @IBAction func LoginClick(_ sender: Any) {
        if emailTextField.text == "admin" && passwordTextField.text == "admin" && emailTextField.text?.count ?? 0 >= 5 && passwordTextField.text?.count ?? 0 >=  5 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding1")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        } else {
            let alert = UIAlertController(title: "Password and username too short", message: "Please input the a username and password greater than 5.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
}

