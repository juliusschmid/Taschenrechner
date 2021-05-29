//
//  ViewController.swift
//  Taschenrechner
//
//  Created by HS on 29.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var resultLabel: UILabel!
 
    var userIsInTheMiddleOfTyping : Bool = false
    var decimalusing : Bool = false
    var firstNumber : Double = 0.0
    var secondNumber : Double = 0.0
    var result : Double = 0.0
    var choosingOperator : String = ""
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    
    
  
    @IBAction func nummberButton_Tapped(_ sender: UIButton) {
    
        var key = sender.currentTitle!
        if userIsInTheMiddleOfTyping == true {
            
            if decimalusing == true && key == "." {
                
                key = "" }
            else {
                resultLabel.text = key
                userIsInTheMiddleOfTyping = true
             }
            
            if key == "." {
                decimalusing = true
                
            }
            
        }
    
        resultLabel.text = resultLabel.text! + key
    
    }
    
    
    
    @IBAction func equalButton_Tapped(_ sender: UIButton) {
    }
    
    
    
    
    @IBAction func clearButton_Tapped(_ sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        choosingOperator = ""
        resultLabel.text = "0"
        decimalusing = false
    
    }
    
    
    
    @IBAction func operationButton_Tapped(_ sender: UIButton) {
    }
    












}

