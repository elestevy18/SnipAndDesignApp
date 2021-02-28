//
//  DIYTypeViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit
import CoreData

class DIYTypeViewController: UIViewController {

    @IBOutlet var DYIInputView: UITextField!
    @IBOutlet var FavoriteCategoriesEditText: UITextField!
    

    var u: User?
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var selectedDiy: String?
    var selectedCategories: String?
    
    let FavoriteDIY  = ["Furniture",
                        "Crafts",
                        "Clothes",
                        "Costumes",
                        "Electronics"]
    
    let Categories  = ["Weekend build",
                       "Best Daily",
                       "Easy",
                       "Medium",
                       "Hard"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Data for picker views
        
    
        let ALPicker = UIPickerView()
        ALPicker.delegate = self
        ALPicker.dataSource = self
        ALPicker.tag = 1
        //ALPicker.delegate = DIYPickerDelegate
        DYIInputView.inputView = ALPicker
        //DYIInputView.text = FavoriteDIY[ALPicker.selectedRow(inComponent: 0)]
        
        let ALPicker2 = UIPickerView()
        ALPicker.tintColor = UIColor.black
        ALPicker2.delegate = self
        ALPicker2.dataSource = self
        ALPicker2.tag = 2
        //ALPicker2.delegate = CategoriesPickerDelegate
        FavoriteCategoriesEditText.inputView = ALPicker2
    }
    
    
    
    @IBAction func nextPressed(_ sender: Any) {
        
        if u != nil {
            
            print("here 1")
            u?.diyFav = DYIInputView.text
            u?.catFav = FavoriteCategoriesEditText.text
            appDelegate.saveContext()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
            self.navigationController?.dismiss(animated: false, completion: nil)
            self.show(dashBoard, sender: self)
        }
        
        u = User.init(context: appDelegate.getMOCOrViewContext())
        u?.diyFav = DYIInputView.text
        u?.catFav = FavoriteCategoriesEditText.text
   
        appDelegate.saveContext()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func skipPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dashBoard = storyboard.instantiateViewController(identifier: "onboarding3")
        self.navigationController?.dismiss(animated: false, completion: nil)
        self.show(dashBoard, sender: self)
    }
}

extension DIYTypeViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return FavoriteDIY.count
        } else {
            return Categories.count
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     
        if pickerView.tag == 1 {
            return FavoriteDIY[row]
        } else {
            return Categories[row]
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        if pickerView.tag == 1 {
            selectedDiy =  FavoriteDIY[row]
            DYIInputView.text = selectedDiy
        } else {
            selectedCategories =  Categories[row]
            FavoriteCategoriesEditText.text = selectedCategories
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        if let view = view as? UILabel{
            label = view
        } else {
            label = UILabel()
        }
    
        if pickerView.tag == 1 {
            label.textColor = .white
            label.textAlignment = .center
            label.text = FavoriteDIY[row]
            return label
        } else {
            label.textColor = .white
            label.textAlignment = .center
            label.text = Categories[row]
            return label
        }
    }
    
    private func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if pickerView.tag == 1 {
                       return  FavoriteDIY[row]
        } else {
            return  Categories[row]
                       
        }
    }}
