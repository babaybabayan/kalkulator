//
//  ViewController.swift
//  kalkulator
//
//  Created by Five Code Developmet on 24/06/19.
//  Copyright © 2019 akbar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelKal: UILabel!
    
    let math = Math()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear()
    }
    
    func clear () {
        labelKal.text = "0"
        math.runningNumber = ""
        math.leftNumber = ""
        math.rightNumber = ""
        
    }
    
    @IBAction func samaDengan(_ sender: Any) {
        math.rightNumber = math.runningNumber
        if (sender as AnyObject).tag == 12 {
            if math.leftNumber != "" && math.rightNumber != "" {
                math.result = "\(Double(math.leftNumber)! * Double(math.rightNumber)! / 100 )"
                labelKal.text = math.result
            }else{
                math.result = "\(Double(math.runningNumber)! / 100)"
                labelKal.text = math.result
            }
            
        }else if (sender as AnyObject).tag == 17 {
            
            if math.typeOfOperator == .kali {
                math.result = "\(Double(math.leftNumber)! * Double(math.rightNumber)!)"
                labelKal.text = math.result
            } else if math.typeOfOperator == .bagi {
                math.result = "\(Double(math.leftNumber)! / Double(math.rightNumber)!)"
                labelKal.text = math.result
            } else if math.typeOfOperator == .kurang {
                math.result = "\(Double(math.leftNumber)! - Double(math.rightNumber)!)"
                labelKal.text = math.result
            } else if math.typeOfOperator == .tambah {
                math.result = "\(Double(math.leftNumber)! + Double(math.rightNumber)!)"
                labelKal.text = math.result
            } else if math.typeOfOperator == .persen {
                math.result = "\(Double(math.runningNumber)! / 100)"
                labelKal.text = math.result
            }
            
        }
        math.runningNumber = math.result
    }
    
    @IBAction func clearButton(_ sender: Any) {
        clear()
    }
    
    @IBAction func operatonButton(_ sender: Any) {
        
        math.leftNumber = math.runningNumber
        math.runningNumber = ""
        
        if (sender as AnyObject).tag == 13 {
            math.typeOfOperator = .bagi
        } else if (sender as AnyObject).tag == 14 {
            math.typeOfOperator = .kali
        } else if (sender as AnyObject).tag == 15 {
            math.typeOfOperator = .kurang
        } else if (sender as AnyObject).tag == 16 {
            math.typeOfOperator = .tambah
        } else if (sender as AnyObject).tag == 12 {
            math.typeOfOperator = .persen
        }
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if labelKal.text == "0" {
            clear()
        }
        math.runningNumber += "\(Int((sender as AnyObject).tag))"
        labelKal.text = math.runningNumber
    }
    
}


