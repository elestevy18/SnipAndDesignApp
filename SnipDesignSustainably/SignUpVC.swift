//
//  SignUpVC.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 12/28/20.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var SignUpBtn: UIButton!
    @IBOutlet weak var FBBtn: UIButton!
    
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
    


}
