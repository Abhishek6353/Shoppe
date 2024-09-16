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


    }
    
    
    override func viewWillLayoutSubviews() {
        viewProfile.layer.cornerRadius = viewProfile.frame.height / 2
    }
    
    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        SceneDelegate().sceneDelegate?.mainNav?.popViewController(animated: true)
    }
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        
    }
    
    @IBAction func btnRecoveryAction(_ sender: UIButton) {
        imgSMS.isHidden = sender.tag == 1
        imgEmail.isHidden = sender.tag == 0
    }
    
}
