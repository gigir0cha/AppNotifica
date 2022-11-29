//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by Dario Pintor on 19/10/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField{
    
    //constrututor recebendo somente o placeholder
    init(placeholder: String) {
          super.init(frame: .zero)
          
        initDefault(placeholder: placeholder, keyBordType: .default, returnKeyType: .default)
        
      }
    
    //construtore recebendo a string + o tipo do teclado e o tipo do retorno
    init(placeholder: String, keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType ) {
          super.init(frame: .zero)
          
        initDefault(placeholder: placeholder, keyBordType: keyBordType, returnKeyType: returnKeyType)
        
      }
    
  
    private func initDefault(placeholder: String, keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBordType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
