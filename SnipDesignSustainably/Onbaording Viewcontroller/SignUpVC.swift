//
//  SignUpVC.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 12/28/20.
//

import UIKit

class SignUpVC: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var u: User?

     @IBOutlet weak var SignUpBtn: UIButton!
    @IBOutlet weak var FBBtn: UIButton!
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var lastNameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Sign Up"
        //round Blue button
        FBBtn.layer.cornerRadius = FBBtn.frame.size.height / 2
        FBBtn.clipsToBounds = true
       //Gray transparent button
        SignUpBtn.layer.cornerRadius = SignUpBtn.frame.size.height / 2
        SignUpBtn.clipsToBounds = true
        SignUpBtn.backgroundColor = .clear
        SignUpBtn.layer.borderWidth = 3
        SignUpBtn.layer.borderColor = CGColor.init(red: 0.84, green: 0.84, blue: 0.84, alpha:1)
        
    }
    @IBAction func backBtnClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func SignUpClicked(_ sender: Any) {
        if nameTF.text?.count ?? 0 >= 2 && lastNameTF.text?.count ?? 0 >= 2 && emailTF.text?.count ?? 0 >= 5 && passwordTF.text?.count ?? 0 >=  5 {
            
            if u != nil {
              
                u?.firstName = nameTF.text
                u?.lastName = lastNameTF.text
                u?.password = passwordTF.text
                u?.email = emailTF.text
                appDelegate.saveContext()
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
                self.navigationController?.dismiss(animated: false, completion: nil)
                self.show(dashBoard, sender: self)
            }
            
            u = User.init(context: appDelegate.getMOCOrViewContext())
            
            u?.firstName = nameTF.text
            u?.lastName = lastNameTF.text
            u?.password = passwordTF.text
            u?.email = emailTF.text
            
            appDelegate.saveContext()
            
      
            
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
    

}
