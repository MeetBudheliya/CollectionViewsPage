//
//  ViewController.swift
//  CollectionViewsPage
//
//  Created by MAC on 26/10/20.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate ,UICollectionViewDataSource{

    @IBOutlet weak var Collection1: UICollectionView!
    @IBOutlet weak var Collection2: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var imgList = [UIImage]()
    var nameList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        imgList = [#imageLiteral(resourceName: "jonny-caspari-A7ol2HfnycY-unsplash"),#imageLiteral(resourceName: "ivan-rohovchenko-vpQHhRdoadU-unsplash"),#imageLiteral(resourceName: "clay-banks-tYsFbfQp4_A-unsplash"),#imageLiteral(resourceName: "makm-photography-u0irC_UnbOk-unsplash"),#imageLiteral(resourceName: "jim-cooke-r6g4GcD6lP0-unsplash")]
        nameList = ["Castle","Amazing Historical place","Road","House","Fort"]
        pageControl.numberOfPages = nameList.count
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgList.count
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageControl.currentPage = indexPath.row
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        pageControl.currentPage = indexPath.row
        if collectionView == Collection1
        {
            let cell = Collection1.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath) as! CollectionViewCell
            cell.image.image = imgList[indexPath.row]
            cell.label.text = nameList[indexPath.row]
            cell.image.layer.cornerRadius = 15
            return cell
        }
        else
        {
            let cell = Collection2.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! CollectionViewCell1
            cell.image.image = imgList[indexPath.row]
            cell.image.layer.cornerRadius = 10
            return cell
        }

    }

}

