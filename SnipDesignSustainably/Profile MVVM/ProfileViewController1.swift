//
//  ViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/1/21.
//

import UIKit
import Kingfisher
import CoreData

class ProfileViewController1: UIViewController {
    
    lazy var tableView:UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.delegate = self
        tv.dataSource = self
        tv.register(GameOverviewTableViewCell.self, forCellReuseIdentifier: "GameOverviewTableViewCell")
        tv.register(GameRatingsTableViewCell.self, forCellReuseIdentifier: "GameRatingsTableViewCell")
        tv.register(UpdatesTableViewCell.self, forCellReuseIdentifier: "UpdatesTableViewCell")
        tv.showsVerticalScrollIndicator = false
        return tv
    }()
    

    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
        @IBOutlet var name: UILabel!
    let vm = ProfileViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(tableView)
        
        tableView.pin(to: view)
       
        
        let headerView = StrechyHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 250))
        headerView.imageView.image = UIImage(named: "profile")
        self.tableView.tableHeaderView = headerView

        
        
        
        
        print("++++++++++++++++++++++++++++++++++++++")
        
        vm.getDataFromDataProvider()
        
        let user = vm.arrUser[0]
        print(user.lastName + user.firstName + user.favCategory + user.favDIY)
        print(vm.arrUser.count)
        name.text = user.firstName

//        profilePicture.layer.cornerRadius = profilePicture.frame.height/2
//        let url1 = "https://picsum.photos/id/"
//        let url2 = "/300/300"
//        var aRandomInt = Int.random(in: 0...1000)
//        let randNum = String(aRandomInt)
//        var url = url1 + randNum + url2
//        let URL1 = URL(string: url)
//        profilePicture.kf.setImage(with: URL1)
        
    }
    

}



extension ProfileViewController1:UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GameOverviewTableViewCell", for: indexPath) as! GameOverviewTableViewCell
            cell.backgroundColor = .white
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: tableView.frame.width)
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GameRatingsTableViewCell", for: indexPath) as! GameRatingsTableViewCell
            cell.backgroundColor = .white
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            return cell
        }
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UpdatesTableViewCell", for: indexPath) as! UpdatesTableViewCell
            cell.backgroundColor = .white
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80
        }
        if indexPath.row == 1 {
            return 55
        }
        if indexPath.row == 2 {
            return 680
        }
        return CGFloat()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! StrechyHeaderView
        headerView.scrollViewDidScroll(scrollView: scrollView)
        
        let y = scrollView.contentOffset.y
        let v = y/210
        let value = Double(round(100*v)/100)
        print(value)
        // It return 1 when header end reaches the height of navbar which is 160.
        
        if value >= 1.0 {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.7, options: .curveEaseInOut, animations: {
                
            }, completion: nil)
            
            UIView.animate(withDuration: 0.4) {
            
            }
            
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.7, options: .curveEaseInOut, animations: {
               
            }, completion: nil)
            
            UIView.animate(withDuration: 0.4) {
             
            }
        }
    }
    
}
