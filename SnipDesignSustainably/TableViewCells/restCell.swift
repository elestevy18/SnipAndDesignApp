//
//  restCell.swift
//  TableView
//
//  Created by Kevin Jimenez on 1/25/21.
//

import Foundation
import UIKit

class restCell: UITableViewCell {
    // OUTLET TO OBJECTS IN THE CELL
    
    
    
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var burger: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var rating: UILabel!
    //@IBOutlet weak var description: UILabel!
    
    var restaurant: Restaurant!
    func setCell(restaurant1: Restaurant) {
        restaurant = restaurant1
//        category.text = restaurant.title
        //buger.text =  restaurant.repsText
        title.text  =   restaurant.title
        time.text = restaurant.waitTime
        rating.text = restaurant.rating
       
        
  //Styling for rounded labels with light grey background
        time.layer.borderWidth = 1
        time.layer.borderColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.01)
        time.layer.cornerRadius = 8
        time.layer.masksToBounds = true
        
        rating.layer.borderWidth = 1
        rating.layer.borderColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.01)
        rating.layer.cornerRadius = 8
        rating.layer.masksToBounds = true


    }
}




