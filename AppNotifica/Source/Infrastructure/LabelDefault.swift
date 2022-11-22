//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Dario Pintor on 19/10/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    private func initDefault(text: String){
        self.text = text
        self.textColor = .textLabelColor
        self.font = UIFont(name: "SFProDisplay-Light", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
