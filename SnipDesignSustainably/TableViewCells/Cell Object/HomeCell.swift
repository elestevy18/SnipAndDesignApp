//
//  HomeCEll.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit

//MAKE CLASS, DECLARE VARIBALES. VARIABLE ARE THE VIEWS IN THE CELL
class HomeCell {
    
    var title: String
    var location: String

    var time: String
    var tags: String
    var description: String
    var GP: String

    //INITIALIZE THE CLASS BY ASIGNING INIT PARAMATERS TO VARIABLES DECLARED ABOVE
    init(title: String, location: String, time: String,
         tags: String, description: String, GP: String) {
        
        self.title = title
        self.location = location
        self.time = time
        self.tags = tags
        self.description = description
        self.GP = GP
        
    }
}
