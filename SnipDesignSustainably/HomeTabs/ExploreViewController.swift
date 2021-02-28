//
//  ExploreViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 1/29/21.
//
import UIKit
import Kingfisher


let reuseIdentifier = "CellIdentifer";
var array = ["First Cell", "Second Cell", "Third Cell", "Fourth Cell", "Fifth Cell"]


class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet var story1: UIImageView!
    @IBOutlet var story2: UIImageView!
    @IBOutlet var story3: UIImageView!
    @IBOutlet var story4: UIImageView!
    @IBOutlet var story5: UIImageView!
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        var aRandomInt = Int.random(in: 0...1000)
        var randNum = String(aRandomInt)
        var url = url1 + randNum + url2
        var URL1 = URL(string: url)
        story1.kf.setImage(with: URL1)
        
        story1.layer.cornerRadius = story1.frame.size.height / 2
        aRandomInt = Int.random(in: 0...1000)
        randNum = String(aRandomInt)
        url = url1 + randNum + url2
        URL1 = URL(string: url)
        story2.kf.setImage(with: URL1)
        story2.layer.cornerRadius = story1.frame.size.height / 2
        aRandomInt = Int.random(in: 0...1000)
        randNum = String(aRandomInt)
        url = url1 + randNum + url2
        URL1 = URL(string: url)
        story3.kf.setImage(with: URL1)
        story3.layer.cornerRadius = story1.frame.size.height / 2
        aRandomInt = Int.random(in: 0...1000)
        randNum = String(aRandomInt)
        url = url1 + randNum + url2
        URL1 = URL(string: url)
        story4.kf.setImage(with: URL1)
        story4.layer.cornerRadius = story1.frame.size.height / 2
        aRandomInt = Int.random(in: 0...1000)
        randNum = String(aRandomInt)
        url = url1 + randNum + url2
        URL1 = URL(string: url)
        story5.kf.setImage(with: URL1)
        story5.layer.cornerRadius = story1.frame.size.height / 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UICollectionViewDatasource methods
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as UICollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        let url1 = "https://picsum.photos/id/"
        let url2 = "/300/300"
        let aRandomInt = Int.random(in: 0...1000)
        let randNum = String(aRandomInt)
        let url = url1 + randNum + url2
        let URL1 = URL(string: url)
        cell.image.kf.setImage(with: URL1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let noOfCellsInRow = 3
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        
        return CGSize(width: size, height: size)
    }

    
}
