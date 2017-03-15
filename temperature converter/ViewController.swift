//
//  ViewController.swift
//  temperature converter
//
//  Created by UDN Digital on 2017/3/2.
//  Copyright © 2017年 UDN Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsius: UITextField!
    @IBOutlet weak var fahrenheit: UITextField!
    
    @IBAction func celsiusClick(_ sender: Any) {
        celsius.text = ""
        fahrenheit.text = ""
    }
    
    @IBAction func fahrenheitClick(_ sender: Any) {
        celsius.text = ""
        fahrenheit.text = ""

    }
    
    @IBAction func convert(_ sender: Any) {
        if(celsius.text != "" && (celsius.text?.isInt)!){
            fahrenheit.text = String(format: "%.2f", Double(celsius.text!)! * 9 / 5 + 32)
            
        }
        
        if(fahrenheit.text != "" && (fahrenheit.text?.isInt)!){
            celsius.text = String(format: "%.2f",(Double(fahrenheit.text!)! - 32) * 5 / 9)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
    
    var isString: Bool {
        return String(self) != nil
    }
}
