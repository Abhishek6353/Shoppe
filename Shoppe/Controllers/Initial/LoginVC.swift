//
//  LoginVC.swift
//  Shoppe
//
//  Created by Abhishek on 26/08/24.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet weak var emailView: UIView!
    
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewWillLayoutSubviews() {
        emailView.layer.cornerRadius = emailView.bounds.height / 2
    }

    
    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        
    }
    
    @IBAction func btnForgorPasswordAction(_ sender: UIButton) {
        let passRecoveryVC = storyboard?.instantiateViewController(withIdentifier: PasswordRecoveryVC.className) as! PasswordRecoveryVC
        SceneDelegate().sceneDelegate?.mainNav?.pushViewController(passRecoveryVC, animated: true)
    }
}
