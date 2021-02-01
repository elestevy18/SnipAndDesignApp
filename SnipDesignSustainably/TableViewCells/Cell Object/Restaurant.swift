//
//  Exercises.swift
//  BeginnerTableView
//
//  Created by Kevin Jimenez on 7/6/20
//
// OBJECT FOR EXERCISE LIST CELLS
import UIKit
//MAKE CLASS, DECLARE VARIBALES. VARIABLE ARE THE VIEWS IN THE CELL
import UIKit
//MAKE CLASS, DECLARE VARIBALES. VARIABLE ARE THE VIEWS IN THE CELL
class Restaurant {
    
    var category: String
    var title: String
    var description: String
    var waitTime: String
    var rating: String
    
    
    //INITIALIZE THE CLASS BY ASIGNING INIT PARAMATERS TO VARIABLES DECLARED ABOVE
    init(category: String, title: String, description: String, waitTime: String, rating: String) {
        
        self.category = category
        self.title = title
        self.description = description
        self.waitTime = waitTime
        self.rating = rating
        
    }
}

