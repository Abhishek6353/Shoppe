//
//  otpVerificationVC.swift
//  Shoppe
//
//  Created by Abhishek on 17/09/24.
//

import UIKit

class OTPVerificationVC: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblVerificationMedium: UILabel!
    @IBOutlet weak var btnSendAgain: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewProfile: UIView!

    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewWillLayoutSubviews() {
        btnSendAgain.layer.cornerRadius = btnSendAgain.frame.height / 2
        viewProfile.layer.cornerRadius = viewProfile.frame.height / 2
    }
    
    
    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        // Create a transition
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromLeft // Reverse of the push

        // Add the transition to the navigation controller's view
        SceneDelegate().sceneDelegate?.mainNav?.view.layer.add(transition, forKey: kCATransition)

        // Pop the view controller
        SceneDelegate().sceneDelegate?.mainNav?.popViewController(animated: false)
    }
    
    @IBAction func btnSendAgainAction(_ sender: UIButton) {
        
    }
    
    
    //MARK: - FUnctions
    func setupUI() {
        stackView.setCustomSpacing(13, after: lblDesc)
    }
    
}
