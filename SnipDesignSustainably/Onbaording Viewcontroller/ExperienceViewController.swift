//
//  ExperienceViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var u: User?


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
    @IBAction func beginnerPressed(_ sender: Any) {
        if u != nil {
            
            print("here 1")
            u?.experience = "Beginner"
            appDelegate.saveContext()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        }
        
        u = User.init(context: appDelegate.getMOCOrViewContext())
        u?.experience = "Beginner"

        
        appDelegate.saveContext()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding4")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
    }
    
    @IBAction func intermediatePressed(_ sender: Any) {
        
        
        if u != nil {
            
            print("here 1")
            u?.experience = "Intermediate"
            appDelegate.saveContext()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        }
        
        u = User.init(context: appDelegate.getMOCOrViewContext())
        u?.experience = "Intermediate"
        
        
        appDelegate.saveContext()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding4")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
    }
    @IBAction func expertPressed(_ sender: Any) {
        if u != nil {
            
            print("here 1")
            u?.experience = "Expert"
            appDelegate.saveContext()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        }
        
        u = User.init(context: appDelegate.getMOCOrViewContext())
        u?.experience = "Expert"
        
        
        appDelegate.saveContext()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding4")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func skipBtnPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding4")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
    }
    
}
