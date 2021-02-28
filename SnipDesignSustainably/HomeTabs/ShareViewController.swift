//
//  ShareViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/5/21.
//

import UIKit
import Kingfisher


let reuseIdentifier1 = "CellIdentifer1";


class ShareViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
@IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let url1 = "https://picsum.photos/id/"
//        let url2 = "/300/300"
//        let aRandomInt = Int.random(in: 0...1000)
//        let randNum = String(aRandomInt)
//        let url = url1 + randNum + url2
//        _ = URL(string: url)
//
//
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath) as! CollectionViewCell1
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
