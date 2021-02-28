//
//  SavedViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/4/21.
//

import UIKit

class SavedViewController: UIViewController {

    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SavedViewController.imageTapped(gesture:)))
   
        image1.addGestureRecognizer(tapGesture)
        image1.isUserInteractionEnabled = true
        image2.addGestureRecognizer(tapGesture)
        image2.isUserInteractionEnabled = true
    }
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "savedDetails")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
        }
}
