//
//  PrimaryButton.swift
//  Shoppe
//
//  Created by Abhishek on 26/08/24.
//

import UIKit

final class PrimaryButton: UIButton {
    
    
    // Default functions
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    
    //Private function
    private func setupUI() {
        backgroundColor = UIColor(resource: .buttonBackgroudPrimary)
        setTitleColor(.buttonPrimaryText, for: .normal)
        titleLabel?.font = Fonts.nunitoSansLight.font(size: 22)
        titleLabel?.textAlignment = .center
        layer.cornerRadius = 16
    }
}
