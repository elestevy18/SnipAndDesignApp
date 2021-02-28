//
//  LoadingViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Remove from navigation to prevent going back to the onbarding sequence
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        //Delay to navigate to home tabs
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "home")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
    
    
        
            }
            
        }
    }

