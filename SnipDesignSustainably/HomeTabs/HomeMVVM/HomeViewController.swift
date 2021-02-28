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

    
    let vm = HomeViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vm.getDataFromDataProvider()
        self.navigationController?.dismiss(animated: true, completion: nil)
        self.navigationItem.setHidesBackButton(true, animated: false)
        //Load Local JSON

        //Set the logo in the navigation bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    

 
}
  


extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.size()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(" You have selected ---> \(indexPath.row)")
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let infoCollection = storyboard.instantiateViewController(identifier: "DetailsViewController")
//        self.show(infoCollection, sender: self)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell1 = HomeCell(title: vm.getUserTitel(pos: indexPath.row), location: vm.getLocation(pos: indexPath.row), time: vm.getTime(pos: indexPath.row), tags: vm.getTags(pos: indexPath.row), description: vm.getDescription(pos: indexPath.row), GP:vm.getGP(pos: indexPath.row))
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell") as! HomeTableViewCell
        
        cell.image1.kf.setImage(with: vm.randomImage())
        cell.setCell(homeCell: cell1)
        return cell
    }
}


//-------------------------------------------------------





