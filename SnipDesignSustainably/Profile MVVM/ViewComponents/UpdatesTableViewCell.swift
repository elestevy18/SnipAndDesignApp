//
//  UpdatesTableViewCell.swift
//  design_to_code18
//
//  Created by Shobhakar Tiwari on 09/09/20.
//  Copyright © 2020 Shobhakar Tiwari. All rights reserved.
//

import UIKit
import Kingfisher

class UpdatesTableViewCell: UITableViewCell {
    let vm = ProfileViewModel()
    
    let gameImageView:UIImageView = {
        
        
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
       // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()
    
    let gameImageView2:UIImageView = {
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()
    
    let gameImageView3:UIImageView = {
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()
    
    let gameImageView4:UIImageView = {
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()

    
    let gameImageView5:UIImageView = {
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()
    
    let gameImageView6:UIImageView = {
        let img = UIImageView()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        // img.layer.cornerRadius = 25
        img.kf.setImage(with: URL1)
        img.layer.masksToBounds = true
        return img
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(gameImageView)
        addSubview(gameImageView2)
        addSubview(gameImageView3)
        addSubview(gameImageView4)
        addSubview(gameImageView5)
        addSubview(gameImageView6)
 
        setUpConstrainst()
    }
    
    func setUpConstrainst(){
        NSLayoutConstraint.activate([
            gameImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            gameImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            gameImageView.widthAnchor.constraint(equalToConstant: 150),
            gameImageView.heightAnchor.constraint(equalToConstant: 150),
            
            gameImageView2.leadingAnchor.constraint(equalTo: gameImageView.trailingAnchor, constant: 20),
            gameImageView2.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            gameImageView2.widthAnchor.constraint(equalToConstant: 150),
            gameImageView2.heightAnchor.constraint(equalToConstant: 150),
            
            gameImageView3.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            gameImageView3.topAnchor.constraint(equalTo: gameImageView.bottomAnchor, constant: 20),
            gameImageView3.widthAnchor.constraint(equalToConstant: 150),
            gameImageView3.heightAnchor.constraint(equalToConstant: 150),
            
            gameImageView4.leadingAnchor.constraint(equalTo: gameImageView3.trailingAnchor, constant: 20),
            gameImageView4.topAnchor.constraint(equalTo: gameImageView.bottomAnchor, constant: 20),
            gameImageView4.widthAnchor.constraint(equalToConstant: 150),
            gameImageView4.heightAnchor.constraint(equalToConstant: 150),
            
            gameImageView5.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            gameImageView5.topAnchor.constraint(equalTo: gameImageView3.bottomAnchor, constant: 20),
            gameImageView5.widthAnchor.constraint(equalToConstant: 150),
            gameImageView5.heightAnchor.constraint(equalToConstant: 150),
            
            gameImageView6.leadingAnchor.constraint(equalTo: gameImageView5.trailingAnchor, constant: 20),
            gameImageView6.topAnchor.constraint(equalTo: gameImageView4.bottomAnchor, constant: 20),
            gameImageView6.widthAnchor.constraint(equalToConstant: 150),
            gameImageView6.heightAnchor.constraint(equalToConstant: 150),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
