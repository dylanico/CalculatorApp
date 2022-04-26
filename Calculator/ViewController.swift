//
//  ViewController.swift
//  Calculator
//
//  Created by Dylan Forde on 20/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var numberButtonTitle: String = ""
    var operationButtonTitle: String = ""
    
    
    @IBOutlet weak var calculatorField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func numberButton(_ sender: UIButton) {
        
        numberButtonTitle = sender.titleLabel?.text ?? ""
        print(numberButtonTitle)
        
        updateCalculatorView()
        
    }
    
    @IBAction func operationButton(_ sender: UIButton) {
        
        operationButtonTitle = sender.titleLabel?.text ?? ""
        print(operationButtonTitle)
        
        updateCalculatorView()
        
    }
    
    
    
    func updateCalculatorView(){
        
        
        if calculatorField.text == "0"{
            calculatorField.text = numberButtonTitle
        }else{
            calculatorField.text! += numberButtonTitle
        }
        
        if operationButtonTitle == "AC"{
            calculatorField.text = "0"
        }
        
    }
}
