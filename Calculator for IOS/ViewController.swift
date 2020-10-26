//
//  ViewController.swift
//  Calculator for IOS
//
//  Created by njuios on 2020/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var output : UILabel!
    var calculator = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberTouch(_ sender:UILabel){
        let input = sender.tag ?? 0
        output.text = calculator.HandleNum(input)
    }

    @IBAction func unaryTouch(_ sender:UILabel){
        let input = sender.tag ?? 0
        output.text = calculator.HandleUnaryOp(input)
    }
    @IBAction func binaryTouch(_ sender:UILabel){
        let input = sender.tag ?? 0
        output.text = calculator.HandleBinaryOp(input)
    }
    @IBAction func functionTouch(_ sender:UILabel){
        let input = sender.tag ?? 0
        output.text = calculator.HandleFunctionnalOp(input)
    }
}

