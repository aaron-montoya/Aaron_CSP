//
//  CreativityController.swift
//  Aaron_CSP
//
//  Created by Montoya, Aaron on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "pineapple"),
            UIImage(named: "squishball"),
            UIImage(named: "tree"),
            UIImage(named: "pineapple"),
            UIImage(named: "tree"),
            UIImage(named: "squishball"),
            UIImage(named: "pineapple"),
            UIImage(named: "pineapple"),
            UIImage(named: "tree"),
            UIImage(named: "squishball"),
            UIImage(named: "pineapple")
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
