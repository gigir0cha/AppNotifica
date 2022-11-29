//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    //cria uma variável que é do
    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
       override func loadView(){
           self.view = loginView
       }
              override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"
    

       }

}
