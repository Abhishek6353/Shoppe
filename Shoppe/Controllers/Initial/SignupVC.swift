//
//  SignupVC.swift
//  Shoppe
//
//  Created by Abhishek on 26/08/24.
//

import UIKit

class SignupVC: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet weak var btnPasswordShowHide: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var btnDone: UIButton!
    
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var numberView: UIView!
    
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        emailView.layer.cornerRadius = emailView.bounds.height / 2
        passwordView.layer.cornerRadius = passwordView.bounds.height / 2
        numberView.layer.cornerRadius = numberView.bounds.height / 2
    }
    
    //MARK: - @IBAction
    @IBAction func btnCancelAction(_ sender: UIButton) {
        
    }
    
    @IBAction func btnDoneAction(_ sender: UIButton) {
        
    }
    
    @IBAction func btnPasswordHideShowAction(_ sender: UIButton) {
        btnPasswordShowHide.isSelected.toggle()
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    
    //MARK: - Functions
    func setupUI() {
        btnPasswordShowHide.setImage(.iconEyeOpened, for: .normal)
        btnPasswordShowHide.setImage(.iconEyeClosed, for: .selected)
    }
}
