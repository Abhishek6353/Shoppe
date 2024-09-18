//
//  PasswordRecoveryVC.swift
//  Shoppe
//
//  Created by Abhishek on 17/09/24.
//

import UIKit

class PasswordRecoveryVC: UIViewController {
    
    
    //MARK: - @@IBOutlet
    @IBOutlet weak var imgSMS: UIImageView!
    @IBOutlet weak var imgEmail: UIImageView!
    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var viewProfile: UIView!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

setupUI()
    }
    


    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        SceneDelegate().sceneDelegate?.mainNav?.popViewController(animated: true)
    }
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: OTPVerificationVC.className) as? OTPVerificationVC else {
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
    
    @IBAction func btnRecoveryAction(_ sender: UIButton) {
        imgSMS.isHidden = sender.tag == 1
        imgEmail.isHidden = sender.tag == 0
    }
    
    
    
    //MARK: - Functions
    func setupUI() {
        viewProfile.layer.cornerRadius = viewProfile.frame.height / 2
    }
    
}
