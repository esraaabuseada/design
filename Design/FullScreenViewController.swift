//
//  FullScreenViewController.swift
//  UIDesign
//
//  Created by Lost Star on 10/9/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
  
    
    @IBOutlet var collectionView: UICollectionView!
    
    var photos = [UIImage]()
    var indexPath :IndexPath!
 
  
  
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad",photos)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    
       print(indexPath)
        print(photos.count)
     collectionView.register(UINib(nibName: "FullCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FullCollectionViewCell")
        
        collectionView.performBatchUpdates(nil){(result) in self.collectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)}
          
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear",photos)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FullCollectionViewCell", for: indexPath) as! FullCollectionViewCell
        cell.photoView.image = photos[indexPath.item]
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
