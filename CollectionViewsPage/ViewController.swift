//
//  ViewController.swift
//  CollectionViewsPage
//
//  Created by MAC on 26/10/20.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate ,UICollectionViewDataSource{

    @IBOutlet weak var Collection1: UICollectionView!
    
    var imgList = [UIImage]()
    var nameList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        imgList = [#imageLiteral(resourceName: "Simulator Screen Shot - iPhone 8 Plus - 2020-10-19 at 09.44.15"),#imageLiteral(resourceName: "zhang-kaiyv-oc9mA8_aL9Q-unsplash"),#imageLiteral(resourceName: "toa-heftiba-m7r1BVoWTAk-unsplash"),#imageLiteral(resourceName: "clay-banks-tYsFbfQp4_A-unsplash"),#imageLiteral(resourceName: "Simulator Screen Shot - iPhone 8 Plus - 2020-10-19 at 09.44.15")]
        nameList = ["A","B","C","D","E"]
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = Collection1.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath) as! CollectionViewCell
        cell.image.image = imgList[indexPath.row]
        cell.label.text = nameList[indexPath.row]
        return cell
    }

}

