//
//  RegisterView.swift
//  AppNotifica
//
//  Created by Dario Pintor on 20/10/22.
//

import Foundation
import UIKit

class RegisterView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor
            setupVisualElements()
            
        }
    
       

    //cria a função com as propriadades da label no login
    var imageLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar", font: UIFont.systemFont(ofSize: 27, weight: .regular))
    
    
    //cria a função com as propriadades da text no login
    var emailTextField = TextFieldDefault (placeholder: "E-mail")
    
    //cria a função com as propriadades da text no login
    var senhaTextField = TextFieldDefault (placeholder: "Senha")
    
    //cria a função com as propriadades da text no login
    var confirmaSenhaTextField = TextFieldDefault (placeholder: "Confirme sua senha")
    
    //cria a função com as propriadades do botão registrar
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    
    //cria a função com as propriadades da butao no logor
    var buttonLogar = ButtonDefault(botao: "LOGAR")
    
   
        
    
    func setupVisualElements() {
        
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmaSenhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)
        
        
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
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
