//
//  SearchViewController.swift
//  TableView
//
//  Created by Kevin Jimenez on 1/25/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    var restArray = ["Five Guys", "Red Robbin","Shake Shack","In-N-Out","Burger King","McDonalds","Phatburger","Smashburger","Burger Palace" ,"Burger Dynasty","Wendy's","Sonic"]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("insidesaerch vC")
    }
    

}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(" You have selected ---> \(indexPath.row)")
        
        //For memory Storage
        let defaults = UserDefaults.standard
        let description = "$$*American*Fast Food*Sandwiches"
        let waittime = "  20-30min  "
        let rating = " 5 "
        
        defaults.set(restArray[indexPath.row], forKey: Save.restName)
        defaults.set(description, forKey: Save.description)
        defaults.set(waittime, forKey: Save.waitTime)
        defaults.set(rating, forKey: Save.rating)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let infoCollection = storyboard.instantiateViewController(identifier: "DetailsViewController")
        self.show(infoCollection, sender: self)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let description = "$$*American*Fast Food*Sandwiches"
        let waittime = "  20-30min  "
        let rating = " 5 "
       
        let cell1 = Restaurant(category: "Burger", title: restArray[indexPath.row], description: description,
                               waitTime: waittime, rating: rating)
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell") as! restCell
        cell.setCell(restaurant1: cell1)
        return cell
    }
    
    
}


//-------------------------------------------------------


