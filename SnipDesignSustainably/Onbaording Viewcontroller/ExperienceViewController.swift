//
//  ExperienceViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

class ExperienceViewController: UIViewController {

    @IBOutlet var beginnerBtn: UIButton!
    @IBOutlet var intermediateBtn: UIButton!
    @IBOutlet var expertBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beginnerBtn.layer.cornerRadius = beginnerBtn.frame.size.height / 2
        beginnerBtn.clipsToBounds = true
        
        intermediateBtn.layer.cornerRadius = intermediateBtn.frame.size.height / 2
        intermediateBtn.clipsToBounds = true
        
        expertBtn.layer.cornerRadius = expertBtn.frame.size.height / 2
        expertBtn.clipsToBounds = true

    }
    

}
