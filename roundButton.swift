//
//  roundButton.swift
//  Taschenrechner
//
//  Created by JS on 01.06.21.
//

import Foundation
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
    override  func prepareForInterfaceBuilder() {
        if roundButton == true {
            
            layer.cornerRadius = frame.height / 2
        }
    }

}
