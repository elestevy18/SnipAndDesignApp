//
//  SplashVC.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 12/28/20.
//

import UIKit

class SplashVC: UIViewController {

    @IBOutlet weak var SignUpBtn: UIButton!
    @IBOutlet weak var LoginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo")
        imageView.image = image
        navigationItem.titleView = imageView
        
        
        SignUpBtn.layer.cornerRadius = SignUpBtn.frame.size.height / 2
        SignUpBtn.clipsToBounds = true
        
        
        LoginBtn.layer.cornerRadius = LoginBtn.frame.size.height / 2
        LoginBtn.clipsToBounds = true
        LoginBtn.backgroundColor = .clear
        LoginBtn.layer.borderWidth = 2
        LoginBtn.layer.borderColor = CGColor.init(red: 0.84, green: 0.84, blue: 0.84, alpha:1)
        
   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
