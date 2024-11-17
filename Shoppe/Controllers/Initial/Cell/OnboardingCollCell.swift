//
//  OnboardingCollCell.swift
//  Shoppe
//
//  Created by Abhishek on 23/09/24.
//

import UIKit

class OnboardingCollCell: UICollectionViewCell {
    
    @IBOutlet weak var imgMain: UIImageView!
    @IBOutlet weak var btnStart: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnStart.layer.cornerRadius = 16
    }
    
}
