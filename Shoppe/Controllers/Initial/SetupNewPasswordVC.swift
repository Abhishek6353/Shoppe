//
//  SetupNewPasswordVC.swift
//  Shoppe
//
//  Created by Abhishek on 19/09/24.
//

import UIKit

class SetupNewPasswordVC: UIViewController {
    
    
    
    //MARK: - Variables
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtRepeatPassword: UITextField!
    @IBOutlet weak var viewNewPassword: UIView!
    @IBOutlet weak var viewRepeatPassword: UIView!
    
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    
    
    //MARK:  - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        navigateToBack()
    }
    
    @IBAction func btnSaveAction(_ sender: UIButton) {
        SceneDelegate().sceneDelegate?.mainNav?.popToRootViewController(animated: true)
    }
    
    
    //MARK: - Functions
    func setupUI() {
        viewNewPassword.layer.cornerRadius = viewNewPassword.frame.height / 2
        viewRepeatPassword.layer.cornerRadius = viewRepeatPassword.frame.height / 2
        viewProfile.layer.cornerRadius = viewProfile.frame.height / 2
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

    
}
