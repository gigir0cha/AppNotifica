//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by Dario Pintor on 19/10/22.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(botao: String) {
        super.init(frame: .zero)
        initDefault(botao: botao)
      }
    
    
    
    private func initDefault(botao: String) {
        self.setTitle(botao, for: .normal)
        self.backgroundColor = .buttonBackGroundColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
