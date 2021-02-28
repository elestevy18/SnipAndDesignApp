//
//  AgeViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

class AgeViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var u: User?

    
    
    let Gender  = ["Male",
                        "Female",
                        "Other"]
    

    @IBOutlet var ageBtn: UIButton!
    @IBOutlet var genderBtn: UIButton!
    @IBOutlet var skipBtn: UIButton!
    
    @IBOutlet var ageTF: UITextField!
    @IBOutlet var genderTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageTF.keyboardType = UIKeyboardType.numberPad
        
        let ALPicker = UIPickerView()
        ALPicker.delegate = self
        ALPicker.dataSource = self
        ALPicker.tag = 1
        //ALPicker.delegate = DIYPickerDelegate
        genderTF.inputView = ALPicker
        //DYIInputView.text = FavoriteDIY[ALPicker.selectedRow(inComponent: 0)]
        
        //Round blue button
        ageBtn.layer.cornerRadius = ageBtn.frame.size.height / 2
        ageBtn.clipsToBounds = true
        
        genderBtn.layer.cornerRadius = ageBtn.frame.size.height / 2
        genderBtn.clipsToBounds = true
        
    }
    
    @IBAction func NextPressed(_ sender: Any) {
        
        
        if u != nil {
            
            let number: Int64? = Int64(ageTF.text!)
            u?.gender = genderTF.text
            u?.age = number ?? 0
            
            appDelegate.saveContext()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        }
        
        let u = User.init(context: appDelegate.getMOCOrViewContext())
        let number: Int64? = Int64(ageTF.text!)
        u.gender = genderTF.text
        u.age = number ?? 0
        
        appDelegate.saveContext()
        
        
        
        
   
    }
    
    
    @IBAction func agePressed(_ sender: Any) {
        ageTF.becomeFirstResponder()
    }
    @IBAction func GenderPressed(_ sender: Any) {
        
        genderTF.becomeFirstResponder()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func skipPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding2")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)

    }
}


extension AgeViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      
            return Gender.count
      
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
   
            return Gender[row]
     
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
           let  selectedDiy =  Gender[row]
            genderTF.text = selectedDiy
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        if let view = view as? UILabel{
            label = view
        } else {
            label = UILabel()
        }
  
            label.textColor = .white
            label.textAlignment = .center
            label.text = Gender[row]
            return label
      
    }
    
    private func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    
            return  Gender[row]
      
    }}
