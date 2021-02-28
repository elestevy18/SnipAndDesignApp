//
//  userSingleton.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/25/21.
//

import Foundation
import UIKit



class UserSingleton {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var person: User
    
    private init (){
    
        person = User.init(context: appDelegate.getMOCOrViewContext())
        appDelegate.saveContext()
        
    }
    
    func getPerson() -> User {
        return person
    }
}
