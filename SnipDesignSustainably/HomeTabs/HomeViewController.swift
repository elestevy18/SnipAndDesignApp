//
//  HomeViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit
import Kingfisher

struct Car: Decodable {
    let models : [String]
}

class HomeViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    var cars: [Car] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Load Local JSON
        jsonTwo()
        
        //Set the logo in the navigation bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo")
        imageView.image = image
        navigationItem.titleView = imageView
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
  


extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(" You have selected ---> \(indexPath.row)")
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let infoCollection = storyboard.instantiateViewController(identifier: "DetailsViewController")
//        self.show(infoCollection, sender: self)
        
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


//-------------------------------------------------------





