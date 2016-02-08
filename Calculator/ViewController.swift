//
//  ViewController.swift
//  Calculator
//
//  Created by Elizabeth Simonian on 2/5/16.
//  Copyright © 2016 Elizabeth Simonian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var op: Int = 0
    var setZero: Bool = true
    var operand: Int = 0
    
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func numericPressed(sender: AnyObject) {
        
        if setZero {
            resultLabel.text = "0"
            setZero = false
        }
        
        var result: Int = Int(resultLabel.text!)!
        
        result = result * 10 + sender.tag!
        resultLabel.text="\(result)"
        
    }
    
    
    @IBAction func clearPressed(sender: AnyObject) {
        resultLabel.text = "0"
    }
    
    
    @IBAction func equalsPressed(sender: AnyObject) {
        
        operand = calculateResult(oprtr: op)
        resultLabel.text = "\(operand)"
        op = 0
        setZero = true
            
        
    }
    
    @IBAction func operatorPressed(sender: AnyObject) {
        
        if op != 0 {
            
            operand = calculateResult(oprtr: op)
            resultLabel.text = "\(operand)"
            setZero = true
            op = sender.tag
            
        } else {
            
            let res: Int = Int(resultLabel.text!)!
            operand = res
            setZero = true
            op = sender.tag
            
        }
        
       
    }
    
    func calculateResult(oprtr oprtr: Int) -> Int {
        
        var returnValue: Int = Int(resultLabel.text!)!
        
        switch(oprtr) {
            
        case 1:
            returnValue = operand * returnValue
            break
            
        case 2:
            returnValue = operand / returnValue
            break
            
        case 3:
            returnValue = operand + returnValue
            break
            
        case 4:
            returnValue = operand - returnValue
            break
            
        default:
            break
        }
        
        return returnValue
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setZero = true
        op = 0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
        
    }


}

