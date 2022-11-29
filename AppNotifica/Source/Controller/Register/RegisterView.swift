//
//  RegisterView.swift
//  AppNotifica
//
//  Created by Dario Pintor on 20/10/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault {
    
    //MARK: - Clouseres
    var onLoginTap: (()->Void)?
     
    //cria a função com as propriadades da label no login
    var imageLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar", font: UIFont.systemFont(ofSize: 20, weight: .regular))
    
    //cria a função com as propriadades da text no login
    var emailTextField = TextFieldDefault (placeholder: "E-mail", keyBordType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriadades da text no login
    var senhaTextField : TextFieldDefault  = {
        let text = TextFieldDefault(placeholder: "Senha", keyBordType: .emailAddress, returnKeyType: .next)
        
        text.isSecureTextEntry = true;
        
        return text
         }()
    
    //cria a função com as propriadades da text no login
    var confirmaSenhaTextField : TextFieldDefault  = {
        let text = TextFieldDefault(placeholder: "Confirme sua Senha", keyBordType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true;
        
        return text
         }()
    
    //cria a função com as propriadades do botão registrar
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    
    //cria a função com as propriadades da butao no logor
    var buttonLogar = ButtonDefault(botao: "LOGAR")
    
   
        
    
    override func setupVisualElements() {
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        confirmaSenhaTextField.delegate = self
        
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmaSenhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            
            imageLabel.widthAnchor.constraint(equalToConstant: 374),
            imageLabel.heightAnchor.constraint(equalToConstant: 60),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmaSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmaSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmaSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmaSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmaSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            

            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmaSenhaTextField.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        ])
    }
    
    //MARK: - Actions
    @objc
    private func loginTap(){
        onLoginTap?()
    }
    
    
}

extension RegisterView: UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
            
        } else if textField == senhaTextField {
            self.confirmaSenhaTextField.becomeFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        
        return true
        
    }
    
}

