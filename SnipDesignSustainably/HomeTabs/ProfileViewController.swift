//
//  ViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/1/21.
//

import UIKit
import Kingfisher

class ProfileViewController: UIViewController {
    
    var cars: [Car] = []

    @IBOutlet var tableView: UITableView!
    @IBOutlet var profilePicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonTwo()
        profilePicture.layer.cornerRadius = profilePicture.frame.height/2
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        let randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        let URL1 = URL(string: url)
        profilePicture.kf.setImage(with: URL1)
        // Do any additional setup after loading the view.
    }
    
    func jsonTwo() {
        let url = Bundle.main.url(forResource: "user", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        cars = try! JSONDecoder().decode([Car].self, from: data)
        for car in cars {
            let models = car.models
            print(models)
        }
    }
}



extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(" You have selected ---> \(indexPath.row)")
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = cars[indexPath.row]
        let data = user.models
        let cell1 = HomeCell(title: data[0], location: data[1], time: data[2], tags: data[3], description: data[4], GP: data[5])
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell") as! HomeTableViewCell
        let url = URL(string: data[6])
        cell.image1.kf.setImage(with: url)
        cell.setCell(homeCell: cell1)
        return cell
    }
}

