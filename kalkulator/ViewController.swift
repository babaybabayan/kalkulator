//
//  ViewController.swift
//  kalkulator
//
//  Created by Five Code Developmet on 24/06/19.
//  Copyright © 2019 akbar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var labelKal: UILabel!
    
    let math = Math()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear()
    }
    
    func clear () {
        labelKal.text = String(math.number[0])
    }
    
    @IBAction func numbers(_ sender: Any) {

        if math.performingMath == true {
            labelKal.text = String((sender as AnyObject).tag)
            math.numberOfScreen = Double(labelKal.text!)!
            math.performingMath = false
        }else{
                labelKal.text! += String((sender as AnyObject).tag)
                math.numberOfScreen = Double(labelKal.text!)!
            }
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if labelKal.text != "" && (sender as AnyObject).tag != 10 && (sender as AnyObject).tag != 17 {
            
            math.previousNumber = Double(labelKal.text!)!
            //print(math.previousNumber)
            
            math.operation = (sender as AnyObject).tag
            math.performingMath = true
        }
        
        if (sender as AnyObject).tag == 10 {
            clear()
        }
        
        if (sender as AnyObject).tag == 1 {
            //math.previousNumber = Double(math.number[1])
            math.performingMath = false
        }
        
    }
    
}

