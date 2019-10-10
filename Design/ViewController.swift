//
//  ViewController.swift
//  UIDesign
//
//  Created by user on 10/1/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray: [UIImage] = [
        UIImage(named: "02-News detalise_dark-3")!,
        UIImage(named: "02-News detalise_dark-3")!,
        UIImage(named: "02-News detalise_dark-3")!,UIImage(named: "02-News detalise_dark-3")!
    ]
    
    var textArray = [" -فرنسا لان أيمضبيبديدالمزيفة وق أ فشكّل الإثنان قد, مكثّفة-فرنسا لان أيمضبيبديدالمزيفة وقة"," -فرنسا لان أيمضبيبديدالمزيفة وق أ فشكّل الإثنان قد, مكثّفة-فرنسا لان أيمضبيبديدالمزيفة وقة"," -فرنسا لان أيمضبيبديدالمزيفة وق أ فشكّل الإثنان قد, مكثّفة-فرنسا لان أيمضبيبديدالمزيفة وقة"," -فرنسا لان أيمضبيبديدالمزيفة وق أ فشكّل الإثنان قد, مكثّفة-فرنسا لان أيمضبيبديدالمزيفة وقة"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
       self.profileImageView.layer.cornerRadius = 30;
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cv", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = imageArray[indexPath.row]
        cell.textView .text = textArray[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let fvc = storyboard?.instantiateViewController(withIdentifier:"FullScreenViewController") as! FullScreenViewController
        fvc.photos = imageArray
        print(fvc.photos!.count)
        fvc.indexPath = indexPath
        
        
        fvc.navigationController?.pushViewController(fvc, animated: true)
        
        
    }


}

