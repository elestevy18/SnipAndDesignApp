//
//  BookViewModel.swift
//  MVVMEx1
//
//  Created by Alok Upadhyay on 09/02/21.
//

import Foundation


class HomeViewModel {
    
    var cells = [Car]()
    
    //iteraction with data provider
    func getDataFromDataProvider() {
        let dataP = HomeDataProvider.init()
        cells = try dataP.getData()
    }
    
    func size() -> Int {
        return cells.count
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
    
    
    func getUserTitel(pos: Int)->String {
        return cells[pos].models[0]
    }
    
    func getLocation(pos: Int)->String {
        return cells[pos].models[1]
    }
    
    func getTime(pos: Int)->String {
        return cells[pos].models[2]
    }
    
    func getTags(pos: Int)->String {
        return cells[pos].models[3]
    }
    
    func getDescription(pos: Int)->String {
        return cells[pos].models[4]
    }
    
    func getGP(pos: Int)->String {
        return cells[pos].models[5]
    }
    
 
}
