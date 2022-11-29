//
//  LoginView.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    
  //MARK: -  Clouseres
  var onRegisterTap: (() -> Void)?
  var onLoginTap: (() -> Void)?
    
    //cria a função com as propriadades da imagem no login
    var imageLogin = ImageDefault(image: "ImageLogin")
       
    //cria a função com as propriadades da label no login
    var imageLabel = LabelDefault(text: "compartilhe historias", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    //cria a função com as propriadades da text no login
    var emailTextField = TextFieldDefault (placeholder: "E-mail", keyBordType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriadades da text no login
    var senhaTextField : TextFieldDefault  = {
        let text = TextFieldDefault(placeholder: "Senha", keyBordType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true;
        
        return text
         }()
    
    //cria a função com as propriadades da butao no logor
    var buttonLogar = ButtonDefault(botao: "LOGAR")
    
    //cria a função com as propriadades do botão registrar
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
        
    
    override func setupVisualElements() {
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
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
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        ])
    }
    //MARK: - Actions
    @objc
    private func registerTap(){
        onRegisterTap?()
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

//
extension LoginView: UITextFieldDelegate {
  
    //esconde o teclado quando o botão próximo é acionado e foca no proximo campo
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        //quando estiverna campo de email, ao clicar no botao seguinte vai para o campo senha
        if textField == emailTextField {
            //
            self.senhaTextField.becomeFirstResponder()
        } else {
            //se náo for o campo senha esconde o teclado
            textField.resignFirstResponder()
        }
        
        return true
    }
}
