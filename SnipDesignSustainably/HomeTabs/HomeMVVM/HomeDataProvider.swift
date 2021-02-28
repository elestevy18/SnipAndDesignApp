//
//  DataProvider.swift
//  MVVMEx1
//
//  Created by Alok Upadhyay on 09/02/21.
//

import UIKit
import CoreData

class HomeDataProvider {
    var cars: [Car] = []
    
    func getData() ->[Car] {
        
        let url = Bundle.main.url(forResource: "user", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        cars = try! JSONDecoder().decode([Car].self, from: data)
        
        for car in cars {
            let models = car.models
        }
        
        
        return cars
    }
}
