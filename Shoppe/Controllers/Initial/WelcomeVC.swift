//
//  WelcomeVC.swift
//  Shoppe
//
//  Created by Abhishek on 26/08/24.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
//MARK: - @IBAction
    @IBAction func btnCreateAccountTapped(_ sender: UIButton) {
        let signUpVC = storyboard?.instantiateViewController(withIdentifier: SignupVC.className) as! SignupVC
        SceneDelegate().sceneDelegate?.mainNav?.pushViewController(signUpVC, animated: true)
//        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    
    @IBAction func btnGetStartAction(_ sender: UIButton) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: LoginVC.className) as! LoginVC
        SceneDelegate().sceneDelegate?.mainNav?.pushViewController(loginVC, animated: true)
//        self.navigationController?.pushViewController(loginVC, animated: true)
    }
}
