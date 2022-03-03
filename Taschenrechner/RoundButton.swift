//
//  RoundButton.swift
//  Taschenrechner
//
//  Created by Julius Schmid on 01.03.22.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton : Bool = false {
        didSet {
            if roundButton == true {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton == true {
            layer.cornerRadius = frame.height / 2
        }
    }


}
