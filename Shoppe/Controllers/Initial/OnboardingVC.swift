//
//  OnboardingVC.swift
//  Shoppe
//
//  Created by Abhishek on 23/09/24.
//

import UIKit

class OnboardingVC: UIViewController {
    
    // MARK: - Variables
    private var totalPages = 5
    
    
    // MARK: - Variables
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    
    
    //MARK: - Button Action
        
    
    
    //MARK: - Functions
    private func setupUI() {
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.1608
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 10)
        shadowView.layer.shadowRadius = 37 / 2
        shadowView.layer.masksToBounds = false

        onboardingCollectionView.layer.cornerRadius = 30
        onboardingCollectionView.clipsToBounds = true
        
        pageControl.numberOfPages = totalPages
        pageControl.currentPage = 0
    }
}


//MARK: - UICollectionView delegate
extension OnboardingVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollCell.className, for: indexPath) as! OnboardingCollCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}


// MARK: - UIScrollViewDelegate
extension OnboardingVC {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Calculate the current page based on the scroll offset
        let pageIndex = Int(round(scrollView.contentOffset.x / onboardingCollectionView.frame.width))
        pageControl.currentPage = pageIndex
    }
}
