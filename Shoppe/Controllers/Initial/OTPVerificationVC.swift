//
//  otpVerificationVC.swift
//  Shoppe
//
//  Created by Abhishek on 17/09/24.
//

import UIKit
import DPOTPView

class OTPVerificationVC: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblVerificationMedium: UILabel!
    @IBOutlet weak var btnSendAgain: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewMainWarning: UIView!
    @IBOutlet weak var otpView: DPOTPView!
    
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        lblDesc.backgroundColor = .FF_5790
    }
    
    override func viewDidAppear(_ animated: Bool) {
        otpView.becomeFirstResponder()
    }
    
    
    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        navigateToBack()
    }
    
    @IBAction func btnSendAgainAction(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            self.viewMainWarning.alpha = 1
        }
    }
    
    @IBAction func btnOkAction(_ sender: UIButton) {
        navigateToBack()
    }
    
    @IBAction func btnHIdeWarningAcion(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            self.viewMainWarning.alpha = 0
        }
    }
    
    //MARK: - FUnctions
    func setupUI() {
        stackView.setCustomSpacing(13, after: lblDesc)
        btnSendAgain.layer.cornerRadius = btnSendAgain.frame.height / 2
        viewProfile.layer.cornerRadius = viewProfile.frame.height / 2

        viewMainWarning.alpha = 0
        
        otpView.dpOTPViewDelegate = self
    }
    
    func navigateToBack() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromLeft // Reverse of the push

        // Add the transition to the navigation controller's view
        SceneDelegate().sceneDelegate?.mainNav?.view.layer.add(transition, forKey: kCATransition)

        // Pop the view controller
        SceneDelegate().sceneDelegate?.mainNav?.popViewController(animated: false)
    }
    
    func navigateToSetNewPassword() {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: SetupNewPasswordVC.className) as? SetupNewPasswordVC else {
            return
        }

        // Create a transition
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)

        // Add the transition to the navigation controller's view
        self.navigationController?.view.layer.add(transition, forKey: kCATransition)

        // Push the view controller
        self.navigationController?.pushViewController(vc, animated: false)

    }
    
}


//MARK: - DOTPView delegate methods
extension OTPVerificationVC : DPOTPViewDelegate {
    func dpOTPViewAddText(_ text: String, at position: Int) {
        if text.count > 3 {
            navigateToSetNewPassword()
        }
    }
    
    func dpOTPViewRemoveText(_ text: String, at position: Int) {
        print("removeText:- " + text + " at:- \(position)" )
    }
    
    func dpOTPViewChangePositionAt(_ position: Int) {
        print("at:-\(position)")
    }
    func dpOTPViewBecomeFirstResponder() {
        
    }
    func dpOTPViewResignFirstResponder() {
        print("Resign")
    }
}
