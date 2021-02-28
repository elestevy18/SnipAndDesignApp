//
//  GameRatingsTableViewCell.swift
//  design_to_code18
//
//  Created by Shobhakar Tiwari on 09/09/20.
//  Copyright © 2020 Shobhakar Tiwari. All rights reserved.
//

import UIKit

class GameRatingsTableViewCell: UITableViewCell {

    let ratings:UILabel = {
        let l = UILabel()
        l.text = "Favorite Category"
        l.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        //l.textColor = CustomColors.lightGray
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    let ratingCount:UILabel = {
        let vm = ProfileViewModel()
        vm.getDataFromDataProvider()
        let user = vm.arrUser[0]
        let category = user.favCategory
        
        let l = UILabel()
        l.text = category
        l.font = UIFont.systemFont(ofSize: 14, weight: .light)
        //l.textColor = CustomColors.lightGray
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

   
    let rankLabel:UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Favorite DIY"
        l.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        //l.textColor = CustomColors.lightGray
        return l
    }()
    
    let categoryLabel:UILabel = {
        let vm = ProfileViewModel()
        vm.getDataFromDataProvider()
        let user = vm.arrUser[0]
        let diy = user.favDIY
        
        let l = UILabel()
        l.text = diy
        l.font = UIFont.systemFont(ofSize: 14, weight: .light)
        //l.textColor = CustomColors.lightGray
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(ratings)
        addSubview(ratingCount)
       
        addSubview(rankLabel)
        addSubview(categoryLabel)
    
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            ratings.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ratings.topAnchor.constraint(equalTo: topAnchor, constant: 0),
       
            
            ratingCount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ratingCount.topAnchor.constraint(equalTo: ratings.bottomAnchor, constant: 2),
            
         
            
            rankLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            rankLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            categoryLabel.topAnchor.constraint(equalTo: rankLabel.bottomAnchor, constant: 2)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
