//
//  ViewController.swift
//  Is It Prime
//
//  Created by Tarek Moubarak on 9/23/18.
//  Copyright © 2018 Tarek Moubarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInputField: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBAction func isItPrime(_ sender: Any) {
        var isPrime = true
        var i = 2
//        var userInput = Int(userInputField.text!)
//        if let userInteger = userInput {
        if let userEnteredString = userInputField.text {
            let userEnteredInteger = Int(userEnteredString)
            if let userInteger = userEnteredInteger{
                if userInteger == 1{
                    isPrime = false
                } else{
                    while i < userInteger {
                        if userInteger == 1 {
                            isPrime = false
                        }
                        if userInteger % i == 0{
                            isPrime = false
                        }
                        i+=1
                    }
                }
                 resultLbl.text = String(isPrime)
            }else{
                resultLbl.text = "Please enter a valid number"
            }
        }
//        else{
//            resultLbl.text = "Please enter a valid number"
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

