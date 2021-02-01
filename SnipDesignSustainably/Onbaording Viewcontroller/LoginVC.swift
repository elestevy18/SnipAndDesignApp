//
//  LoginVC.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 12/28/20.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var FBBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"

        FBBtn.layer.cornerRadius = 20
        FBBtn.clipsToBounds = true
    }
    

}
