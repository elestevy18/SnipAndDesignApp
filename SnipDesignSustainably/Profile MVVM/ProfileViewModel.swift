//
//  BookViewModel.swift
//  MVVMEx1
//
//  Created by Alok Upadhyay on 09/02/21.
//

import Foundation


class ProfileViewModel {
    
    var arrUser = [UserModel]()
    
    //iteraction with data provider
    func getDataFromDataProvider() {
        let dataP = DataProvider.init()
        arrUser = try dataP.getData()
    }
    
    func randomImage() -> URL{
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        let aRandomInt = Int.random(in: 0...1000)
        let randNum = String(aRandomInt)
        let url = url1 + randNum + url2
        let URL1 = URL(string: url)
        
        return URL1!
   
    }
    
    func size() -> Int {
        arrUser.count
    }
    
    
    func getFirstName(user: User)->String {
        return user.firstName ?? "Name not found"
    }
    
    func getLastName(user: User)->String {
        return user.lastName ?? "Last Name not Found"
    }
    
    func getAGe(user: User)->Int64 {
        return user.age 
    }
    
    func getCategory(user: User)->String {
        return user.catFav ?? "Category not Found"
    }
    
    func getDIY(user: User)->String {
        return user.diyFav ?? "DIY not found"
    }
    
    func getGender(user: User)->String {
        return user.gender ?? "Gender not Found"
    }
    
    func getEmail(user: User)->String {
        return user.email ?? "Email not Found"
    }

    
}
