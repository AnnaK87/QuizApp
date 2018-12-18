//
//  Button.swift
//  QuizApp
//
//  Created by Anna Kaukh on 12/18/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class Button: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 7
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        
    }

}
