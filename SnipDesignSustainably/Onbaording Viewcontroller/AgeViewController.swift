//
//  AgeViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

class AgeViewController: UIViewController {

    @IBOutlet var ageBtn: UIButton!
    @IBOutlet var genderBtn: UIButton!
    @IBOutlet var skipBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round blue button
        ageBtn.layer.cornerRadius = ageBtn.frame.size.height / 2
        ageBtn.clipsToBounds = true
        
        genderBtn.layer.cornerRadius = ageBtn.frame.size.height / 2
        genderBtn.clipsToBounds = true
        
    }
    
}
