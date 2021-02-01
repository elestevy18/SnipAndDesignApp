//
//  HomeTableViewCell.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/27/21.
//

import UIKit
//import SDWebImage
//CREATE DELGATE FOR CUSTOM ACTION ON EACH CELL "ADD SET BUTTON"

class HomeTableViewCell: UITableViewCell {
    
    // OUTLET TO OBJECTS IN THE CELL
    
    //    @IBOutlet weak var iconImageView: UIImageView!

    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var tagsLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var GP: UILabel!
    
    var homeCellItem: HomeCell!
    
    func setCell(homeCell: HomeCell) {
        homeCellItem = homeCell
        //  iconImageView.image = history.image
        nameLabel.text = homeCellItem.title
        tagsLabel.text =  homeCellItem.tags
        timeLabel.text  = homeCellItem.time
        descriptionLabel.text = homeCellItem.description
        GP.text = homeCellItem.GP
        
        
    }
}

