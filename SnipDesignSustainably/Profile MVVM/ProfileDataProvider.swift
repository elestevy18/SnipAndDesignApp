//
//  DataProvider.swift
//  MVVMEx1
//
//  Created by Alok Upadhyay on 09/02/21.
//

import UIKit
import CoreData

class DataProvider {
    func getData() ->[UserModel] {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        var dataSourceArray: [User]?
        var data = [UserModel]()
        let command = NSFetchRequest<User>.init(entityName: "User")
        
        do{
            dataSourceArray = try appDelegate.getMOCOrViewContext().fetch(command)
        } catch  {
        }
        var count = 0
        for _ in dataSourceArray ?? [] {
            let firstName = dataSourceArray?[count].firstName
            let lastName = dataSourceArray?[count].lastName
            let age = dataSourceArray?[count].age
            let favCategory = dataSourceArray?[count].catFav
            let favDIY = dataSourceArray?[count].diyFav
            let gender = dataSourceArray?[count].gender
            let email = dataSourceArray?[count].email
            
            let u = UserModel.init(firstName: firstName ?? "No First Name", lastName: lastName ?? "No Last Name", age: age ?? 0, favCategory: favCategory ?? "No Category", favDIY: favDIY ?? "No DIY", gender: gender ?? "No Gender", email: email ?? "No Email")
            data.append(u)
            count = count + 1
        }
        
        return data
        
    }
}
