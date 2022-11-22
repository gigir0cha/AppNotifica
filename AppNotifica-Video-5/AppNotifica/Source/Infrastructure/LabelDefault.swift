//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by Dario Pintor on 19/10/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    
    init(text: String, font: UIFont){
        super.init(frame: .zero)
        initDefault(text: text, font: font)
    }
    
   
    
    private func initDefault(text: String, font: UIFont){
        self.text = text
        self.textColor = .textLabelColor
        self.font = font
        self.adjustsFontSizeToFitWidth = true
        self.numberOfLines = 0;
        self.translatesAutoresizingMaskIntoConstraints = false
        //UIFont(name: "SFProDisplay-Light", size: 80)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
