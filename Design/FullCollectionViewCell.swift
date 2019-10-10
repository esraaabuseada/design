//
//  FullCollectionViewCell.swift
//  Design
//
//  Created by user on 10/10/19.
//  Copyright © 2019 esraa mohamed. All rights reserved.
//

import UIKit

class FullCollectionViewCell: UICollectionViewCell ,UIScrollViewDelegate {

    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoView
    }

}
