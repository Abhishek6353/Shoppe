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
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
}
