//
//  ViewController.swift
//  Taschenrechner
//
//  Created by JS on 29.05.21.
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

    
    
    
    
  
    @IBAction func nummberButton_Tapped(_ sender: RoundButton) {
    
        var key = sender.currentTitle!
      
        if key == "," {
            key = "."
        }
        
        if userIsInTheMiddleOfTyping == true {
            
            if decimalusing == true && key == "." {
                key = ""
            }
            
            resultLabel.text = resultLabel.text! + key
        } else {
            resultLabel.text = key
            userIsInTheMiddleOfTyping = true
        }
        
        if key == "." {
            decimalusing = true
                
            }
            
        }
    
     
    
    
    
    @IBAction func equalButton_Tapped(_ sender: RoundButton) {
        secondNumber = Double(resultLabel.text!)!
        
        calculate(_operator: choosingOperator)
        
        resultLabel.text = String(format: "%.2f", result)
        
        userIsInTheMiddleOfTyping = false
        decimalusing = false
    }
    
    
    
    
    @IBAction func clearButton_Tapped(_ sender: RoundButton) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        choosingOperator = ""
        resultLabel.text = "0"
        decimalusing = false
    
    }
    
    
    
    @IBAction func operationButton_Tapped(_ sender: RoundButton) {
        if resultLabel.text! != "." {
            firstNumber = Double(resultLabel.text!)!
           userIsInTheMiddleOfTyping = false
            choosingOperator = sender.currentTitle!
            
            decimalusing = false
         }
    
    }
    

    func calculate(_operator:String) {
        
        if _operator == "+" {
            result = firstNumber + secondNumber
        } else if _operator == "-" {
            result = firstNumber - secondNumber
        } else if _operator == "x" {
            result = firstNumber * secondNumber
        } else if _operator == "÷" {
            result = firstNumber / secondNumber
        }
        

    }

}

